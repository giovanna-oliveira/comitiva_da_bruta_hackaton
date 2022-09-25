<?php

class ClienteSolicitacao extends TRecord
{
    const TABLENAME  = 'cliente_solicitacao';
    const PRIMARYKEY = 'id';
    const IDPOLICY   =  'serial'; // {max, serial}

    private $banco;
    private $cliente;

    

    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('banco_id');
        parent::addAttribute('cliente_id');
        parent::addAttribute('valor');
        parent::addAttribute('parcelas');
        parent::addAttribute('data_primeiro_pg');
        parent::addAttribute('dia_vencimeto');
        parent::addAttribute('data_receber');
            
    }

    /**
     * Method set_banco
     * Sample of usage: $var->banco = $object;
     * @param $object Instance of Banco
     */
    public function set_banco(Banco $object)
    {
        $this->banco = $object;
        $this->banco_id = $object->id;
    }

    /**
     * Method get_banco
     * Sample of usage: $var->banco->attribute;
     * @returns Banco instance
     */
    public function get_banco()
    {
    
        // loads the associated object
        if (empty($this->banco))
            $this->banco = new Banco($this->banco_id);
    
        // returns the associated object
        return $this->banco;
    }
    /**
     * Method set_cliente
     * Sample of usage: $var->cliente = $object;
     * @param $object Instance of Cliente
     */
    public function set_cliente(Cliente $object)
    {
        $this->cliente = $object;
        $this->cliente_id = $object->id;
    }

    /**
     * Method get_cliente
     * Sample of usage: $var->cliente->attribute;
     * @returns Cliente instance
     */
    public function get_cliente()
    {
    
        // loads the associated object
        if (empty($this->cliente))
            $this->cliente = new Cliente($this->cliente_id);
    
        // returns the associated object
        return $this->cliente;
    }

    /**
     * Method getEmprestimos
     */
    public function getEmprestimos()
    {
        $criteria = new TCriteria;
        $criteria->add(new TFilter('cliente_solicitacao_id', '=', $this->id));
        return Emprestimo::getObjects( $criteria );
    }

    public function set_emprestimo_cliente_solicitacao_to_string($emprestimo_cliente_solicitacao_to_string)
    {
        if(is_array($emprestimo_cliente_solicitacao_to_string))
        {
            $values = ClienteSolicitacao::where('id', 'in', $emprestimo_cliente_solicitacao_to_string)->getIndexedArray('id', 'id');
            $this->emprestimo_cliente_solicitacao_to_string = implode(', ', $values);
        }
        else
        {
            $this->emprestimo_cliente_solicitacao_to_string = $emprestimo_cliente_solicitacao_to_string;
        }

        $this->vdata['emprestimo_cliente_solicitacao_to_string'] = $this->emprestimo_cliente_solicitacao_to_string;
    }

    public function get_emprestimo_cliente_solicitacao_to_string()
    {
        if(!empty($this->emprestimo_cliente_solicitacao_to_string))
        {
            return $this->emprestimo_cliente_solicitacao_to_string;
        }
    
        $values = Emprestimo::where('cliente_solicitacao_id', '=', $this->id)->getIndexedArray('cliente_solicitacao_id','{cliente_solicitacao->id}');
        return implode(', ', $values);
    }

    
}

