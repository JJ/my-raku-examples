class Law::InteractionDelegator{
    my Law::InteractionDelegator $instance = Law::InteractionDelegator.bless(*);
    
    
    method getInstance(){$instance}
    method new{!!!}
}

