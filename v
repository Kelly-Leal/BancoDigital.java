public abstract class Conta {
    private double saldo;
    public void deposito(double valor) {
        saldo += valor;
    }
    public void saque(double valor) {
        if (valor <= saldo) {
            saldo -= valor;
        }
    }
    public void transferencia(Conta conta, double valor) {
        if (valor <= saldo) {
            saque(valor);
            conta.deposito(valor);
        }
    }
}

public class ContaCorrente extends Conta {
}

public class ContaPoupanca extends Conta {
}

public class Banco {
    public static void main(String[] args) {
        ContaCorrente cc = new ContaCorrente();
        ContaPoupanca cp = new ContaPoupanca();
        cc.deposito(1000);
        cc.transferencia(cp, 500);
    }
}
