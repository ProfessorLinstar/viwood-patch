.class public Lcom/android/server/accounts/AccountManagerService$7;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic val$account:Landroid/accounts/Account;

.field public final synthetic val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field public final synthetic val$authTokenType:Ljava/lang/String;

.field public final synthetic val$callerPkg:Ljava/lang/String;

.field public final synthetic val$callerPkgSigDigest:[B

.field public final synthetic val$callerUid:I

.field public final synthetic val$customTokens:Z

.field public final synthetic val$loginOptions:Landroid/os/Bundle;

.field public final synthetic val$notifyOnAuthFailure:Z

.field public final synthetic val$permissionGranted:Z


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZLjava/lang/String;IZ[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 0

    .line 3272
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$7;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p9, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$loginOptions:Landroid/os/Bundle;

    iput-object p10, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$account:Landroid/accounts/Account;

    iput-object p11, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/String;

    iput-boolean p12, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$notifyOnAuthFailure:Z

    iput-boolean p13, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$permissionGranted:Z

    iput-object p14, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$callerPkg:Ljava/lang/String;

    iput p15, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$callerUid:I

    move/from16 p9, p16

    iput-boolean p9, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$customTokens:Z

    move-object/from16 p9, p17

    iput-object p9, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$callerPkgSigDigest:[B

    move-object/from16 p9, p18

    iput-object p9, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-direct/range {p0 .. p8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 12

    const/4 v0, 0x1

    .line 3297
    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    if-eqz p1, :cond_7

    .line 3299
    const-string v1, "authTokenLabelKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "intent"

    if-eqz v1, :cond_0

    .line 3300
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$7;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$account:Landroid/accounts/Account;

    iget v6, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$callerUid:I

    new-instance v7, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v7, p0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v5, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mnewGrantCredentialsPermissionIntent(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 3307
    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCanStartAccountManagerActivity:Z

    .line 3308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3309
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3310
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService$7;->onResult(Landroid/os/Bundle;)V

    return-void

    .line 3313
    :cond_0
    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x5

    if-eqz v9, :cond_5

    .line 3315
    const-string v1, "authAccount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3316
    const-string v3, "accountType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3317
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 3322
    :cond_1
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3323
    const-string p1, "incorrect account type"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    return-void

    .line 3328
    :cond_2
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3329
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$customTokens:Z

    if-nez v1, :cond_3

    .line 3330
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5, v9}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$msaveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3336
    :cond_3
    const-string v1, "android.accounts.expiry"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 3338
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$customTokens:Z

    if-eqz v1, :cond_5

    .line 3339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v10, v3

    if-lez v1, :cond_5

    .line 3340
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$7;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$account:Landroid/accounts/Account;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$callerPkg:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$callerPkgSigDigest:[B

    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/String;

    invoke-static/range {v3 .. v11}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$msaveCachedToken(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 3318
    :cond_4
    :goto_0
    const-string/jumbo p1, "the type and name should not be empty"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    return-void

    .line 3351
    :cond_5
    :goto_1
    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/Intent;

    if-eqz v6, :cond_7

    .line 3352
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$notifyOnAuthFailure:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$customTokens:Z

    if-nez v1, :cond_7

    .line 3360
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3359
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntent(ILandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3362
    const-string p1, "invalid intent in bundle returned"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    return-void

    .line 3366
    :cond_6
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$7;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$account:Landroid/accounts/Account;

    const-string v0, "authFailedMessage"

    .line 3369
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v8

    .line 3366
    const-string v7, "android"

    invoke-static/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mdoNotification(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3373
    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public run()V
    .locals 4

    .line 3287
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$permissionGranted:Z

    if-nez v0, :cond_0

    .line 3288
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    return-void

    .line 3290
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$loginOptions:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3291
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$7;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$callerPkg:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$account:Landroid/accounts/Account;

    iget-object p0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mlogGetAuthTokenMetrics(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toDebugString(J)Ljava/lang/String;
    .locals 1

    .line 3275
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$loginOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 3276
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", getAuthToken, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$account:Landroid/accounts/Account;

    .line 3277
    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", authTokenType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", loginOptions "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$loginOptions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", notifyOnAuthFailure "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$notifyOnAuthFailure:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
