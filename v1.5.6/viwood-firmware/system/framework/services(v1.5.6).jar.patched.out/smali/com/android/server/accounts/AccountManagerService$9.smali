.class public Lcom/android/server/accounts/AccountManagerService$9;
.super Lcom/android/server/accounts/AccountManagerService$StartAccountSession;
.source "AccountManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic val$accountType:Ljava/lang/String;

.field public final synthetic val$authTokenType:Ljava/lang/String;

.field public final synthetic val$callerPkg:Ljava/lang/String;

.field public final synthetic val$options:Landroid/os/Bundle;

.field public final synthetic val$requiredFeatures:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3731
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$9;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p10, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$authTokenType:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$requiredFeatures:[Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$options:Landroid/os/Bundle;

    iput-object p13, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$callerPkg:Ljava/lang/String;

    iput-object p14, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$accountType:Ljava/lang/String;

    invoke-direct/range {p0 .. p9}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 3734
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$authTokenType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$requiredFeatures:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$options:Landroid/os/Bundle;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/accounts/IAccountAuthenticator;->startAddAccountSession(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3736
    iget-object p0, v1, Lcom/android/server/accounts/AccountManagerService$9;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$9;->val$callerPkg:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/accounts/AccountManagerService$9;->val$accountType:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/accounts/AccountManagerService$9;->val$requiredFeatures:[Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$9;->val$authTokenType:Ljava/lang/String;

    invoke-static {p0, v0, v2, v3, v1}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mlogAddAccountMetrics(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toDebugString(J)Ljava/lang/String;
    .locals 1

    .line 3741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", startAddAccountSession, accountType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$accountType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", requiredFeatures "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3743
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$requiredFeatures:[Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 3744
    const-string p1, ","

    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "null"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
