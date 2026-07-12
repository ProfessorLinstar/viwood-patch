.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;
.super Landroid/os/AsyncTask;
.source "DevicePolicyManagerService.java"


# static fields
.field public static final FEATURE_ALLOW:[Ljava/lang/String;

.field public static final FEATURE_DISALLOW:[Ljava/lang/String;


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18806
    const-string v0, "android.account.DEVICE_OR_PROFILE_OWNER_ALLOWED"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->FEATURE_ALLOW:[Ljava/lang/String;

    .line 18808
    const-string v0, "android.account.DEVICE_OR_PROFILE_OWNER_DISALLOWED"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->FEATURE_DISALLOW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    .line 18804
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static hasAccountFeatures(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 18849
    :try_start_0
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/accounts/AccountManager;->hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1e

    .line 18850
    invoke-interface {p0, v0, v1, p1}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 18852
    const-string p1, "DevicePolicyManager"

    const-string p2, "Failed to get account feature"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18804
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 3

    .line 18813
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    .line 18814
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18815
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 18816
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->userHasIncompatibleAccounts(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 18804
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/Map;)V
    .locals 0

    .line 18841
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fputmHasIncompatibleAccounts(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/util/Map;)V

    .line 18843
    const-string p0, "DevicePolicyManager"

    const-string p1, "Finished calculating hasIncompatibleAccountsTask"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final userHasIncompatibleAccounts(I)Z
    .locals 6

    .line 18823
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/accounts/AccountManager;

    .line 18824
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    .line 18825
    invoke-virtual {p0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object p1

    .line 18827
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 18828
    sget-object v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->FEATURE_DISALLOW:[Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->hasAccountFeatures(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    return v5

    .line 18831
    :cond_0
    sget-object v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->FEATURE_ALLOW:[Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->hasAccountFeatures(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
