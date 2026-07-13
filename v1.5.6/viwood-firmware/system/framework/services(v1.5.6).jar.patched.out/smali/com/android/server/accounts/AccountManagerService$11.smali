.class public Lcom/android/server/accounts/AccountManagerService$11;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# instance fields
.field public final synthetic val$account:Landroid/accounts/Account;

.field public final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 0

    .line 4062
    iput-object p10, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$account:Landroid/accounts/Account;

    iput-object p11, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$options:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4065
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$options:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->confirmCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    return-void
.end method

.method public toDebugString(J)Ljava/lang/String;
    .locals 1

    .line 4069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", confirmCredentials, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$account:Landroid/accounts/Account;

    .line 4070
    invoke-virtual {p0}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
