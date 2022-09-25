<?php

class Cliente extends TRecord
{
    const TABLENAME  = 'cliente';
    const PRIMARYKEY = 'id';
    const IDPOLICY   =  'serial'; // {max, serial}

    

    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('nome');
        parent::addAttribute('cpf');
            
    }

    /**
     * Method getClienteSolicitacaos
     */
    public function getClienteSolicitacaos()
    {
        $criteria = new TCriteria;
        $criteria->add(new TFilter('cliente_id', '=', $this->id));
        return ClienteSolicitacao::getObjects( $criteria );
    }
    /**
     * Method getContas
     */
    public function getContas()
    {
        $criteria = new TCriteria;
        $criteria->add(new TFilter('cliente_id', '=', $this->id));
        return Conta::getObjects( $criteria );
    }

    public function set_cliente_solicitacao_banco_to_string($cliente_solicitacao_banco_to_string)
    {
        if(is_array($cliente_solicitacao_banco_to_string))
        {
            $values = Banco::where('id', 'in', $cliente_solicitacao_banco_to_string)->getIndexedArray('nome', 'nome');
            $this->cliente_solicitacao_banco_to_string = implode(', ', $values);
        }
        else
        {
            $this->cliente_solicitacao_banco_to_string = $cliente_solicitacao_banco_to_string;
        }

        $this->vdata['cliente_solicitacao_banco_to_string'] = $this->cliente_solicitacao_banco_to_string;
    }

    public function get_cliente_solicitacao_banco_to_string()
    {
        if(!empty($this->cliente_solicitacao_banco_to_string))
        {
            return $this->cliente_solicitacao_banco_to_string;
        }
    
        $values = ClienteSolicitacao::where('cliente_id', '=', $this->id)->getIndexedArray('banco_id','{banco->nome}');
        return implode(', ', $values);
    }

    public function set_cliente_solicitacao_cliente_to_string($cliente_solicitacao_cliente_to_string)
    {
        if(is_array($cliente_solicitacao_cliente_to_string))
        {
            $values = Cliente::where('id', 'in', $cliente_solicitacao_cliente_to_string)->getIndexedArray('nome', 'nome');
            $this->cliente_solicitacao_cliente_to_string = implode(', ', $values);
        }
        else
        {
            $this->cliente_solicitacao_cliente_to_string = $cliente_solicitacao_cliente_to_string;
        }

        $this->vdata['cliente_solicitacao_cliente_to_string'] = $this->cliente_solicitacao_cliente_to_string;
    }

    public function get_cliente_solicitacao_cliente_to_string()
    {
        if(!empty($this->cliente_solicitacao_cliente_to_string))
        {
            return $this->cliente_solicitacao_cliente_to_string;
        }
    
        $values = ClienteSolicitacao::where('cliente_id', '=', $this->id)->getIndexedArray('cliente_id','{cliente->nome}');
        return implode(', ', $values);
    }

    public function set_conta_cliente_to_string($conta_cliente_to_string)
    {
        if(is_array($conta_cliente_to_string))
        {
            $values = Cliente::where('id', 'in', $conta_cliente_to_string)->getIndexedArray('nome', 'nome');
            $this->conta_cliente_to_string = implode(', ', $values);
        }
        else
        {
            $this->conta_cliente_to_string = $conta_cliente_to_string;
        }

        $this->vdata['conta_cliente_to_string'] = $this->conta_cliente_to_string;
    }

    public function get_conta_cliente_to_string()
    {
        if(!empty($this->conta_cliente_to_string))
        {
            return $this->conta_cliente_to_string;
        }
    
        $values = Conta::where('cliente_id', '=', $this->id)->getIndexedArray('cliente_id','{cliente->nome}');
        return implode(', ', $values);
    }

    public function set_conta_banco_to_string($conta_banco_to_string)
    {
        if(is_array($conta_banco_to_string))
        {
            $values = Banco::where('id', 'in', $conta_banco_to_string)->getIndexedArray('nome', 'nome');
            $this->conta_banco_to_string = implode(', ', $values);
        }
        else
        {
            $this->conta_banco_to_string = $conta_banco_to_string;
        }

        $this->vdata['conta_banco_to_string'] = $this->conta_banco_to_string;
    }

    public function get_conta_banco_to_string()
    {
        if(!empty($this->conta_banco_to_string))
        {
            return $this->conta_banco_to_string;
        }
    
        $values = Conta::where('cliente_id', '=', $this->id)->getIndexedArray('banco_id','{banco->nome}');
        return implode(', ', $values);
    }

    
}

