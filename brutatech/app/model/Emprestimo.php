<?php

class Emprestimo extends TRecord
{
    const TABLENAME  = 'emprestimo';
    const PRIMARYKEY = 'id';
    const IDPOLICY   =  'serial'; // {max, serial}

    private $cliente_solicitacao;

    

    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('cliente_solicitacao_id');
        parent::addAttribute('taxas');
            
    }

    /**
     * Method set_cliente_solicitacao
     * Sample of usage: $var->cliente_solicitacao = $object;
     * @param $object Instance of ClienteSolicitacao
     */
    public function set_cliente_solicitacao(ClienteSolicitacao $object)
    {
        $this->cliente_solicitacao = $object;
        $this->cliente_solicitacao_id = $object->id;
    }

    /**
     * Method get_cliente_solicitacao
     * Sample of usage: $var->cliente_solicitacao->attribute;
     * @returns ClienteSolicitacao instance
     */
    public function get_cliente_solicitacao()
    {
    
        // loads the associated object
        if (empty($this->cliente_solicitacao))
            $this->cliente_solicitacao = new ClienteSolicitacao($this->cliente_solicitacao_id);
    
        // returns the associated object
        return $this->cliente_solicitacao;
    }

    
}

