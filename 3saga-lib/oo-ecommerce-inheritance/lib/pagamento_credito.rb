class PagamentoCredito < Pagamento
    attr_reader :juros
    def initialize(quantidade:, produto:, juros:)
        super(quantidade: quantidade, produto: produto)
        @juros = juros
    end
end