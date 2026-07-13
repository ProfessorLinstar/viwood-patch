.class public Lcom/android/server/accounts/AccountManagerService;
.super Landroid/accounts/IAccountManager$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# static fields
.field public static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

.field public static final ACCOUNTS_CHANGED_OPTIONS:Landroid/os/Bundle;

.field public static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

.field public static final INTERESTING_APP_OPS:[I

.field public static sResponseLatency:Lcom/android/modules/expresslog/Histogram;

.field public static sThis:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

.field public final mContext:Landroid/content/Context;

.field public final mDateFormat:Ljava/text/SimpleDateFormat;

.field public final mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

.field public final mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

.field public final mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mSessions:Ljava/util/LinkedHashMap;

.field public mUserManager:Landroid/os/UserManager;

.field public final mUsers:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$-4efAQFdLKmPHtIOc3lnA6yNExA(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->lambda$removeAccountInternal$2(Landroid/accounts/Account;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    return-void
.end method

.method public static synthetic $r8$lambda$63D9HM8l97WLPV4lVWcCR3b0vjM(Lcom/android/server/accounts/AccountManagerService;IILjava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->lambda$canUserModifyAccountsForType$3(IILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M4PeVorSM8yDtrZvtwtSZIVFtgg(Lcom/android/server/accounts/AccountManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->lambda$onUnlockUser$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pk_rPF2hnOUnFTjJ14OQgpNTjqc(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .locals 0

    .line 6350
    invoke-interface {p0, p1, p2}, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;->onAppPermissionChanged(Landroid/accounts/Account;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$a7rqkt8n8S6g9ZoPslveXQWtqJI(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .locals 0

    .line 6308
    invoke-interface {p0, p1, p2}, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;->onAppPermissionChanged(Landroid/accounts/Account;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xYCkZ9ihDuMHHecg__N7KAaQLJU(I)V
    .locals 0

    .line 418
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsManager(Lcom/android/server/accounts/AccountManagerService;)Landroid/app/AppOpsManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppPermissionChangeListeners(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAuthenticatorCache(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDateFormat(Lcom/android/server/accounts/AccountManagerService;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessions(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsers(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcancelAccountAccessRequestNotificationIfNeeded(Lcom/android/server/accounts/AccountManagerService;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelAccountAccessRequestNotificationIfNeeded(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelNotification(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcompleteCloningAccount(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/accounts/AccountManagerService;->completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoNotification(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService;->doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetCredentialPermissionNotificationId(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleGetAccountsResult(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhasAccountAccess(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misAccountPresentForCaller(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misLocalUnlockedUser(Lcom/android/server/accounts/AccountManagerService;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogAddAccountMetrics(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->logAddAccountMetrics(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogGetAuthTokenMetrics(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->logGetAuthTokenMetrics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnewGrantCredentialsPermissionIntent(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnewRequestAccountAccessIntent(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mpurgeOldGrantsAll(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrantsAll()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpurgeUserData(Lcom/android/server/accounts/AccountManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->purgeUserData(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveAccountInternal(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveVisibilityValuesForPackage(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->removeVisibilityValuesForPackage(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresolveAccountVisibility(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msaveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msaveCachedToken(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/accounts/AccountManagerService;->saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendErrorResponse(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendResponse(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLastAuthenticatedTime(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetsResponseLatency()Lcom/android/modules/expresslog/Histogram;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sResponseLatency:Lcom/android/modules/expresslog/Histogram;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/16 v2, 0x3e

    .line 195
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->INTERESTING_APP_OPS:[I

    .line 218
    new-instance v0, Landroid/app/BroadcastOptions;

    invoke-direct {v0}, Landroid/app/BroadcastOptions;-><init>()V

    const/4 v1, 0x1

    .line 219
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_OPTIONS:Landroid/os/Bundle;

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x5000000

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 302
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 303
    new-array v0, v0, [Landroid/accounts/Account;

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 305
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const v2, 0x461c4000    # 10000.0f

    const/high16 v3, 0x3fc00000    # 1.5f

    const/16 v4, 0x14

    const/16 v5, 0x2710

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string v2, "app.value_high_authenticator_response_latency"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->sResponseLatency:Lcom/android/modules/expresslog/Histogram;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService$Injector;)V
    .locals 8

    .line 320
    invoke-direct {p0}, Landroid/accounts/IAccountManager$Stub;-><init>()V

    .line 240
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 295
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 296
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 298
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 299
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 321
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    .line 322
    invoke-virtual {p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 323
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 324
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 325
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getMessageHandlerLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 326
    invoke-virtual {p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getAccountAuthenticatorCache()Lcom/android/server/accounts/IAccountAuthenticatorCache;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    .line 327
    invoke-interface {v2, p0, v0}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 329
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 331
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 334
    new-instance v3, Lcom/android/server/accounts/AccountManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/accounts/AccountManagerService$1;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 363
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;

    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService-IA;)V

    invoke-virtual {p1, v2}, Lcom/android/server/accounts/AccountManagerService$Injector;->addLocalService(Landroid/accounts/AccountManagerInternal;)V

    .line 365
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 366
    const-string p1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/accounts/AccountManagerService$2;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 381
    new-instance p1, Lcom/android/server/accounts/AccountManagerService$3;

    invoke-direct {p1, p0}, Lcom/android/server/accounts/AccountManagerService$3;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 406
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    const/4 p1, 0x0

    .line 409
    :goto_0
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->INTERESTING_APP_OPS:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    aget v0, v0, p1

    new-instance v2, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;

    invoke-direct {v2, p0, v7}, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService-IA;)V

    invoke-virtual {v1, v0, v7, v2}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 417
    :cond_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    return-void
.end method

.method public static checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .locals 4

    .line 6108
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6107
    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.CREATE_USERS"

    .line 6110
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 6109
    invoke-static {v0, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6111
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static getAuthenticatorTypeAndUIDForUser(Landroid/content/Context;I)Ljava/util/HashMap;
    .locals 1

    .line 1419
    new-instance v0, Lcom/android/server/accounts/AccountAuthenticatorCache;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    .line 1420
    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;
    .locals 2

    .line 1426
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1428
    invoke-interface {p0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object p0

    .line 1427
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1429
    iget-object v1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getSingleton()Lcom/android/server/accounts/AccountManagerService;
    .locals 1

    .line 317
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService;

    return-object v0
.end method

.method public static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 5688
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 5689
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public accountAuthenticated(Landroid/accounts/Account;)Z
    .locals 4

    .line 1876
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x2

    .line 1877
    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1881
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1878
    const-string v3, "accountAuthenticated( account: %s, callerUid: %s)"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1882
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1885
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1886
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1894
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1895
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1899
    :cond_1
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 1901
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 1902
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1904
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 1905
    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    .line 1889
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 1887
    const-string/jumbo p1, "uid %s cannot notify authentication for accounts of type: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1891
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final accountExistsCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    .locals 5

    .line 3014
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter p0

    .line 3015
    :try_start_0
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3016
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 3017
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    .line 3018
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3022
    :cond_1
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final accountTypeManagesContacts(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 5994
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5997
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v3, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5999
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6003
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 6004
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6005
    iget-object p1, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    iget-object p1, p1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const-string v0, "android.permission.WRITE_CONTACTS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    return v0

    :catchall_0
    move-exception p0

    .line 5999
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6000
    throw p0
.end method

.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x1

    .line 3515
    invoke-static {p6, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    const/4 v0, 0x2

    .line 3516
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAccount: accountType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", authTokenType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", requiredFeatures "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3520
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expectActivityLaunch "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3522
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3523
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3517
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 3529
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3530
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 3531
    invoke-virtual {p0, v8, v0}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p2, 0x64

    .line 3533
    :try_start_0
    const-string p3, "User is not allowed to add an account!"

    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3537
    :catch_0
    invoke-virtual {p0, p2, v8}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 3540
    :cond_1
    invoke-virtual {p0, v8, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 p2, 0x65

    .line 3542
    :try_start_1
    const-string p3, "User cannot modify accounts of this type (policy)."

    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3546
    :catch_1
    invoke-virtual {p0, p2, v8}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    return-void

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .line 3550
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accounts/AccountManagerService;->addAccountAndLogMetrics(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    return-void

    .line 3526
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accountType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3525
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "response is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addAccountAndLogMetrics(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 16

    move-object/from16 v1, p0

    .line 3609
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3610
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-nez p6, :cond_0

    .line 3611
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v12, v3

    goto :goto_0

    :cond_0
    move-object/from16 v12, p6

    .line 3612
    :goto_0
    const-string v3, "callerUid"

    invoke-virtual {v12, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3613
    const-string v3, "callerPid"

    invoke-virtual {v12, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3615
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v14

    move/from16 v0, p7

    .line 3617
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 3618
    sget-object v3, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

    const-string v4, "accounts"

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v0

    .line 3621
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$8;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v13, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v13}, Lcom/android/server/accounts/AccountManagerService$8;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3643
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3645
    invoke-static {v14, v15}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 3646
    throw v0
.end method

.method public addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 8

    const/4 v0, 0x1

    .line 3558
    invoke-static {p6, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3559
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x2

    .line 3560
    const-string v3, "AccountManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount: accountType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", response "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", authTokenType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", requiredFeatures "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3564
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", expectActivityLaunch "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3566
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3567
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", for user id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3561
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 3570
    :goto_0
    const-string/jumbo v4, "response cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    .line 3571
    :goto_1
    const-string v2, "accountType cannot be null"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3573
    invoke-virtual {p0, v1, p7}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3582
    invoke-virtual {p0, p7, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 p2, 0x64

    .line 3584
    :try_start_0
    const-string p3, "User is not allowed to add an account!"

    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3588
    :catch_0
    invoke-virtual {p0, p2, p7}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 3591
    :cond_3
    invoke-virtual {p0, p7, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 p2, 0x65

    .line 3593
    :try_start_1
    const-string p3, "User cannot modify accounts of this type (policy)."

    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3597
    :catch_1
    invoke-virtual {p0, p2, p7}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    return-void

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    .line 3601
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->addAccountAndLogMetrics(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    return-void

    :cond_5
    move v7, p7

    .line 3574
    new-instance p0, Ljava/lang/SecurityException;

    .line 3577
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3578
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 3575
    const-string p2, "User %s trying to add account for %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1804
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 10

    const/4 v1, 0x1

    .line 501
    invoke-static {p3, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 502
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 503
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 504
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAccountExplicitly: caller\'s uid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", pid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", packageName="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", accountType="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 505
    const-string v6, "AccountManagerService"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 520
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v8

    .line 522
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    .line 523
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/Map;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-static {v8, v9}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 527
    throw v0

    .line 510
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {v0, p5, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 509
    const-string/jumbo v1, "uid=%s, package=%s cannot explicitly add accounts of type: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 511
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/Map;Ljava/lang/String;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    const/4 v8, 0x1

    .line 1971
    invoke-static {v3, v8}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    const/4 v4, 0x0

    if-nez v1, :cond_0

    return v4

    .line 1975
    :cond_0
    iget-object v9, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v10, 0xc8

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v10, :cond_1

    .line 1976
    const-string v0, "AccountManagerService"

    const-string v1, "Account cannot be added - Name longer than 200 chars"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1979
    :cond_1
    iget-object v9, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v10, :cond_2

    .line 1980
    const-string v0, "AccountManagerService"

    const-string v1, "Account cannot be added - Name longer than 200 chars"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    if-eqz v2, :cond_3

    .line 1983
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const v10, 0xf4240

    if-le v9, v10, :cond_3

    .line 1984
    const-string v0, "AccountManagerService"

    const-string v1, "Account cannot be added - password is too long"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1987
    :cond_3
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1988
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be added - user "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is locked. callingUid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1992
    :cond_4
    iget-object v9, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1993
    :try_start_0
    iget-object v10, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1994
    :try_start_1
    iget-object v11, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v11}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1996
    :try_start_2
    iget-object v11, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v11, v1}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-ltz v11, :cond_5

    .line 1997
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAccountIntoDatabase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skipping since the account already exists"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2052
    :try_start_3
    iget-object v0, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    goto/16 :goto_3

    .line 2001
    :cond_5
    :try_start_5
    iget-object v11, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v11}, Lcom/android/server/accounts/AccountsDb;->findAllDeAccounts()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    const/16 v12, 0x64

    if-le v11, v12, :cond_6

    .line 2002
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAccountIntoDatabase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skipping since more than 100 accounts on device exist"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2052
    :try_start_6
    iget-object v0, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 2006
    :cond_6
    :try_start_7
    iget-object v11, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v11, v1, v2}, Lcom/android/server/accounts/AccountsDb;->insertCeAccount(Landroid/accounts/Account;Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v2, v11, v13

    if-gez v2, :cond_7

    .line 2008
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAccountIntoDatabase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skipping the DB insert failed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2052
    :try_start_8
    iget-object v0, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 2013
    :cond_7
    :try_start_9
    iget-object v2, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, v1, v11, v12}, Lcom/android/server/accounts/AccountsDb;->insertDeAccount(Landroid/accounts/Account;J)J

    move-result-wide v15

    cmp-long v2, v15, v13

    if-gez v2, :cond_8

    .line 2014
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAccountIntoDatabase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skipping the DB insert failed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2052
    :try_start_a
    iget-object v0, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    :cond_8
    if-eqz v3, :cond_a

    .line 2019
    :try_start_b
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move/from16 v16, v4

    .line 2020
    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v17, v8

    .line 2021
    iget-object v8, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v8, v11, v12, v15, v4}, Lcom/android/server/accounts/AccountsDb;->insertExtra(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v18

    cmp-long v4, v18, v13

    if-gez v4, :cond_9

    .line 2022
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAccountIntoDatabase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    invoke-virtual {v1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skipping since insertExtra failed for key "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2022
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2052
    :try_start_c
    iget-object v0, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    return v16

    .line 2027
    :cond_9
    :try_start_e
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountUserDataCaches()V

    move/from16 v4, v16

    move/from16 v8, v17

    goto :goto_1

    :cond_a
    move/from16 v17, v8

    if-eqz v7, :cond_b

    .line 2033
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2034
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2035
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v20, v3

    move v3, v2

    move-object/from16 v2, v20

    .line 2034
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;I)Z

    move-object v13, v1

    move-object/from16 v0, p0

    move-object v1, v13

    goto :goto_2

    :cond_b
    move-object v13, v1

    .line 2039
    iget-object v0, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V

    .line 2041
    iget-object v0, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v1, 0x2

    const/16 v2, 0x3b7

    invoke-static {v2, v0, v6, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    .line 2046
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_ADD:Ljava/lang/String;

    const-string v2, "accounts"

    move-object/from16 v0, p0

    move-wide v3, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 2050
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 2052
    :try_start_f
    iget-object v1, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2054
    monitor-exit v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 2055
    :try_start_10
    monitor-exit v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2056
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2057
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v0, v13, v1}, Lcom/android/server/accounts/AccountManagerService;->addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V

    .line 2060
    :cond_c
    invoke-virtual {v0, v13, v5}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2062
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " added account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    iget-object v2, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "addAccount"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 2066
    iget-object v1, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v2, p7

    invoke-virtual {v0, v2, v1, v7}, Lcom/android/server/accounts/AccountManagerService;->logAddAccountExplicitlyMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v17

    .line 2052
    :goto_3
    :try_start_11
    iget-object v1, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2053
    throw v0

    .line 2054
    :goto_4
    monitor-exit v10
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    throw v0

    .line 2055
    :goto_5
    monitor-exit v9
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    throw v0
.end method

.method public final addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V
    .locals 4

    .line 2132
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 2133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 2134
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne p2, v2, :cond_0

    .line 2135
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v2}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    .line 2136
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2137
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    const/4 v3, 0x4

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final addSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 6

    .line 4795
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p2

    .line 4796
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 4797
    iget-object p2, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p2, p1}, Lcom/android/server/accounts/AccountsDb;->deleteSharedAccount(Landroid/accounts/Account;)Z

    .line 4798
    iget-object p2, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p2, p1}, Lcom/android/server/accounts/AccountsDb;->insertSharedAccount(Landroid/accounts/Account;)J

    move-result-wide v3

    const-wide/16 v0, 0x0

    cmp-long p2, v3, v0

    if-gez p2, :cond_0

    .line 4800
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "insertAccountIntoDatabase: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", skipping the DB insert failed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 4804
    :cond_0
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_ADD:Ljava/lang/String;

    const-string/jumbo v2, "shared_accounts"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    const/4 p0, 0x1

    return p0
.end method

.method public addSharedAccountsFromParentUser(IILjava/lang/String;)V
    .locals 2

    .line 4787
    const-string v0, "addSharedAccountsFromParentUser"

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4788
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsOrEmptyArray(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    .line 4789
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-object v1, p1, v0

    .line 4790
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final calculatePackageSignatureDigest(Ljava/lang/String;I)[B
    .locals 5

    .line 3394
    const-string v0, "AccountManagerService"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 3395
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    invoke-virtual {p0, p1, v3, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 3397
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_0

    aget-object v4, p0, v3

    .line 3398
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    .line 3404
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not find packageinfo for: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v2, v1

    goto :goto_3

    .line 3401
    :goto_2
    const-string p1, "SHA-256 should be available"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    :goto_3
    if-nez v2, :cond_1

    goto :goto_4

    .line 3407
    :cond_1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    :goto_4
    return-object v1
.end method

.method public final canCallerAccessPackage(Ljava/lang/String;II)Z
    .locals 3

    .line 6247
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 6248
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v0, 0x938effd

    .line 6249
    invoke-static {v0, v1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 6250
    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 6253
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 v0, p0, 0x1

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    .line 6254
    const-string v1, "AccountManagerService"

    invoke-static {v1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6255
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not visible to caller "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public final canHaveProfile(I)Z
    .locals 0

    .line 2398
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2399
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final canUserModifyAccounts(II)Z
    .locals 1

    .line 6197
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 6200
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p2}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "no_modify_accounts"

    .line 6201
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final canUserModifyAccountsForType(ILjava/lang/String;I)Z
    .locals 1

    .line 6208
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accounts/AccountManagerService;IILjava/lang/String;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final cancelAccountAccessRequestNotificationIfNeeded(IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 4

    .line 462
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountsOrEmptyArray(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 463
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 464
    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;ZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 0

    if-eqz p4, :cond_1

    .line 491
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p4

    .line 490
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 492
    :cond_1
    :goto_0
    const-string p3, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    invoke-virtual {p0, p1, p3, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    return-void
.end method

.method public final cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 9

    .line 479
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v6, v0, v2

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v7, p3

    move-object v8, p4

    .line 482
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;ZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 9

    .line 470
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountsOrEmptyArray(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 471
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    move-object v3, p0

    move-object v6, p1

    move v5, p2

    move v7, p3

    move-object v8, p4

    .line 472
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;ZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 1

    .line 5828
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    return-void
.end method

.method public final cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 9

    .line 5832
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 5834
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Injector;->getNotificationManager()Landroid/app/INotificationManager;

    move-result-object v3

    .line 5835
    const-string v5, "android"

    iget-object v6, p1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$NotificationId;->-$$Nest$fgetmId(Lcom/android/server/accounts/AccountManagerService$NotificationId;)I

    move-result v7

    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p0

    .line 5837
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    move-object v4, p2

    .line 5835
    invoke-interface/range {v3 .. v8}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5841
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 5842
    throw p0

    .line 5841
    :catch_0
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final checkGetAccountsPermission(Ljava/lang/String;I)Z
    .locals 2

    .line 5980
    const-string v0, "android.permission.GET_ACCOUNTS"

    const-string v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final checkPackageSignature(Ljava/lang/String;II)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 6023
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6026
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {p0, p3}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6028
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6031
    const-class p3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageManagerInternal;

    .line 6033
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 6034
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6035
    iget v1, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-ne v1, p2, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/16 v2, 0x10

    .line 6038
    invoke-virtual {p3, v1, p2, v2}, Landroid/content/pm/PackageManagerInternal;->hasSignatureCapability(III)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0

    :catchall_0
    move-exception p0

    .line 6028
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6029
    throw p0
.end method

.method public final varargs checkPermissionAndNote(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 7

    .line 5875
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p3, v2

    .line 5876
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x2

    .line 5877
    const-string v5, "AccountManagerService"

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5878
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  caller uid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5880
    :cond_0
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 5881
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v4, v3, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 6185
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 6188
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 6186
    const-string p1, "caller uid %s cannot access %s accounts"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 6190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6191
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final checkReadContactsPermission(Ljava/lang/String;I)Z
    .locals 1

    .line 5985
    const-string v0, "android.permission.READ_CONTACTS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 5

    .line 2958
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x2

    .line 2959
    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearPassword: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2962
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2960
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2965
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2966
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2973
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 2975
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    const/4 v4, 0x0

    .line 2976
    invoke-virtual {p0, v1, p1, v4, v0}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2978
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2979
    throw p0

    .line 2969
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2967
    const-string/jumbo p1, "uid %s cannot clear passwords for accounts of type: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2971
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .locals 14

    move-object/from16 v9, p3

    const/4 v0, 0x1

    move-object/from16 v11, p2

    .line 1920
    invoke-static {v11, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1921
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v12

    .line 1923
    :try_start_0
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$5;

    iget-object v4, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v2, p4

    move/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Lcom/android/server/accounts/AccountManagerService$5;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;ILandroid/os/Bundle;)V

    .line 1962
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1964
    invoke-static {v12, v13}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v12, v13}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 1965
    throw p0
.end method

.method public final computeEntrySize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    .line 1165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    if-eqz p2, :cond_1

    .line 1166
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    :cond_1
    add-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x14

    return p1
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .locals 14

    move-object/from16 v10, p2

    move/from16 v0, p5

    const/4 v1, 0x1

    move-object/from16 v11, p3

    .line 4038
    invoke-static {v11, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 4039
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x2

    .line 4040
    const-string v3, "AccountManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4041
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmCredentials: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", response "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", expectActivityLaunch "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4045
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4041
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v5, p4

    .line 4048
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    if-eqz v10, :cond_1

    .line 4057
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v12

    .line 4059
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 4060
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$11;

    iget-object v4, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/server/accounts/AccountManagerService$11;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    .line 4072
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4074
    invoke-static {v12, v13}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v12, v13}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 4075
    throw p0

    .line 4056
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4055
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "response is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4049
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 4052
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4053
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 4050
    const-string v0, "User %s trying to confirm account credentials for %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .locals 15

    move-object/from16 v9, p2

    move/from16 v12, p3

    move/from16 v0, p4

    .line 1811
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, -0x1

    .line 1812
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1813
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->hasCopyAccountsPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1814
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Calling copyAccountToUser requires android.permission.INTERACT_ACROSS_USERS_FULL or android.permission.COPY_ACCOUNTS"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1818
    :cond_1
    :goto_0
    invoke-virtual {p0, v12}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1819
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v11

    .line 1820
    const-string v1, "AccountManagerService"

    if-eqz v2, :cond_2

    if-nez v11, :cond_3

    :cond_2
    move-object/from16 v3, p1

    goto :goto_1

    .line 1833
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Copying account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v13

    .line 1837
    :try_start_0
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$4;

    iget-object v4, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v10, p1

    move-object v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v12}, Lcom/android/server/accounts/AccountManagerService$4;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 1862
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1864
    invoke-static {v13, v14}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v13, v14}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 1865
    throw p0

    :goto_1
    if-eqz v3, :cond_4

    .line 1822
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 1823
    const-string v0, "booleanResult"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1825
    :try_start_1
    invoke-interface {v3, p0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 1827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to report error back to the client."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 10

    .line 3412
    invoke-static {p4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    .line 3413
    const-string/jumbo v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3415
    const-string v2, "authTokenType"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3417
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 3419
    invoke-virtual {p0, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->getApplicationLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    filled-new-array {p3, v4}, [Ljava/lang/Object;

    move-result-object p3

    const v4, 0x10407ee

    .line 3418
    invoke-virtual {v3, v4, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/16 v3, 0xa

    .line 3420
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 3424
    invoke-virtual {p3, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 3425
    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    move-object v3, p3

    move-object p3, v4

    goto :goto_0

    .line 3423
    :cond_0
    const-string v3, ""

    .line 3427
    :goto_0
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 3428
    invoke-virtual {p0, v9}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 3429
    new-instance v4, Landroid/app/Notification$Builder;

    const-string v5, "ACCOUNT"

    invoke-direct {v4, v0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x108008a

    .line 3431
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 3432
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x106001c

    .line 3433
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3435
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 3436
    invoke-virtual {p3, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/high16 v7, 0x14000000

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    .line 3437
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 3440
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 3441
    invoke-virtual {p0, p1, v2, v1, p4}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p1

    const-string p3, "android"

    .line 3442
    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    .line 3441
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V

    return-void
.end method

.method public createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .locals 8

    .line 4388
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 4392
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4393
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4394
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4396
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    const v0, 0x7fffffff

    .line 4398
    const-string/jumbo v1, "user must be concrete"

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    const/4 v0, 0x0

    .line 4402
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4408
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object v4

    .line 4410
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 4412
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    const/high16 v5, 0x54000000

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 4415
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4417
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4418
    throw p0

    .line 4404
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 4389
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can be called only by system UID"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 9

    .line 5772
    const-string v0, "AccountManagerService"

    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x2

    .line 5774
    :try_start_0
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5775
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doNotification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    .line 5778
    :cond_0
    :goto_0
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v0, Landroid/accounts/GrantCredentialsPermissionActivity;

    .line 5779
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5780
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 5779
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5781
    invoke-virtual {p0, p2, p4, p5, p1}, Lcom/android/server/accounts/AccountManagerService;->createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    goto :goto_1

    .line 5783
    :cond_1
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 5784
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p1

    .line 5785
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-virtual {p4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x10406f4

    .line 5788
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5789
    new-instance v4, Landroid/app/Notification$Builder;

    const-string v5, "ACCOUNT"

    invoke-direct {v4, v0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    .line 5791
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x108008a

    .line 5792
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x106001c

    .line 5793
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object p2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 5795
    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 5796
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p6}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    const/high16 v6, 0x14000000

    const/4 v7, 0x0

    move-object v5, p4

    .line 5797
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 5801
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 5802
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/server/accounts/AccountManagerService;->installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5805
    :goto_1
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 5806
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 5699
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v1, "AccountManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 5700
    :cond_0
    const-string v0, "--checkin"

    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "-c"

    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 5701
    :goto_2
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {v4, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 5703
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p2

    .line 5704
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 5705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5706
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5707
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 5708
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5709
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_3

    :cond_3
    :goto_4
    return-void
.end method

.method public final dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 6

    if-eqz p5, :cond_0

    .line 5718
    iget-object p5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p5

    .line 5719
    :try_start_0
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountsDb;->dumpDeAccountsTable(Ljava/io/PrintWriter;)V

    .line 5720
    monitor-exit p5

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 5722
    :cond_0
    const-string v4, "android"

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    .line 5724
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Accounts: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p5, p0

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5725
    array-length p1, p0

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p1, :cond_1

    aget-object v2, p0, p5

    .line 5726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 5730
    :cond_1
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 5731
    iget-object p0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p0

    .line 5732
    :try_start_1
    iget-object p1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1, p3}, Lcom/android/server/accounts/AccountsDb;->dumpDebugTable(Ljava/io/PrintWriter;)V

    .line 5733
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 5734
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 5735
    iget-object p1, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    monitor-enter p1

    .line 5736
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 5737
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Active Sessions: "

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {p5}, Ljava/util/LinkedHashMap;->size()I

    move-result p5

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5738
    iget-object p0, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/accounts/AccountManagerService$Session;

    .line 5739
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v2, v3}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    .line 5741
    :cond_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5743
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 5744
    iget-object p0, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p1

    invoke-interface {p0, p2, p3, p4, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 5747
    iget-object p0, v0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter p0

    .line 5748
    :try_start_3
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result p1

    .line 5749
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez p1, :cond_3

    return-void

    .line 5754
    :cond_3
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 5755
    iget-object p1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5756
    :try_start_4
    iget-object p0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 5757
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->findAllVisibilityValues()Ljava/util/Map;

    move-result-object p0

    .line 5758
    const-string p2, "Account visibility:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5759
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/accounts/Account;

    .line 5760
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5761
    invoke-interface {p0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map;

    .line 5762
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 5763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 5766
    :cond_5
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :catchall_3
    move-exception v0

    move-object p1, v0

    .line 5749
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    .line 5741
    :goto_4
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :catchall_4
    move-exception v0

    move-object p1, v0

    .line 5733
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .locals 12

    .line 4270
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v2, 0x2

    .line 4271
    const-string v5, "AccountManagerService"

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "editProperties: accountType "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", response "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", expectActivityLaunch "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", caller\'s uid "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pid "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4276
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4272
    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 4280
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 4281
    invoke-virtual {p0, p2, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4282
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 4285
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v0

    .line 4283
    const-string/jumbo v1, "uid %s cannot edit authenticator properites for account type: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4287
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4289
    :cond_2
    :goto_0
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v10

    .line 4291
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 4292
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$15;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    move-object v9, p2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$15;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    .line 4304
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4306
    invoke-static {v10, v11}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 4307
    throw v0

    .line 4279
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4278
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .locals 8

    if-nez p4, :cond_0

    .line 6406
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p4

    .line 6408
    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6409
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, p2, v3

    .line 6410
    invoke-virtual {p0, v4, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    if-eqz p5, :cond_2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 6416
    :cond_1
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6420
    :cond_3
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 6422
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Landroid/accounts/Account;

    .line 6423
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    return-object p0
.end method

.method public final filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;
    .locals 7

    .line 6433
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    if-ltz v0, :cond_c

    const/16 v0, 0x3e8

    if-ne p3, v0, :cond_0

    goto/16 :goto_6

    .line 6437
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 6438
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6439
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 6441
    new-array p3, v0, [Ljava/lang/String;

    .line 6446
    :cond_1
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040209

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6448
    array-length v2, p3

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p3, v3

    .line 6449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6453
    :cond_3
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object p1

    .line 6454
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_6

    .line 6461
    :cond_4
    const-string v1, ""

    if-eqz p4, :cond_5

    .line 6462
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 6463
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz p0, :cond_7

    move-object v1, p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    .line 6468
    :cond_5
    array-length p4, p3

    move v2, v0

    :goto_1
    if-ge v2, p4, :cond_7

    aget-object v3, p3, v2

    .line 6469
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 6470
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_6

    move-object v1, v3

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6477
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "filterSharedAccounts#Package not found "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "AccountManagerService"

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6479
    :cond_7
    :goto_3
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6480
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 6481
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/accounts/Account;

    .line 6482
    iget-object v2, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6483
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-interface {p0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 6486
    :cond_8
    array-length v2, p1

    move v3, v0

    :goto_5
    if-ge v3, v2, :cond_a

    aget-object v4, p1, v3

    .line 6487
    invoke-virtual {v4, p4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 6493
    :cond_a
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-interface {p0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_b
    return-object p0

    :cond_c
    :goto_6
    return-object p2
.end method

.method public final findPackagesPerVisibility(Ljava/util/Map;)[Ljava/lang/String;
    .locals 5

    .line 2084
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    .line 2086
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2087
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2088
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2095
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 2097
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 2100
    invoke-virtual {p0, v2, v0}, Lcom/android/server/accounts/AccountManagerService;->getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 2103
    invoke-virtual {p0, v3, v0}, Lcom/android/server/accounts/AccountManagerService;->getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 2106
    invoke-virtual {p0, v4, v0}, Lcom/android/server/accounts/AccountManagerService;->getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, v1, v2, v3, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    move/from16 v4, p5

    .line 3872
    const-string v5, "failed to decrypt session bundle"

    const/4 v6, 0x1

    invoke-static {v0, v6}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3873
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v8, 0x2

    .line 3874
    const-string v9, "AccountManagerService"

    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3875
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finishSession: response "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", expectActivityLaunch "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p3

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", caller\'s uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", caller\'s user id "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3879
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", pid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3880
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", for user id "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3875
    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v10, p3

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 3883
    :goto_1
    const-string/jumbo v8, "response cannot be null"

    invoke-static {v6, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v0, :cond_9

    .line 3886
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v6

    if-eqz v6, :cond_9

    .line 3891
    invoke-virtual {p0, v7, v4}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v6

    if-nez v6, :cond_8

    .line 3899
    invoke-virtual {p0, v4, v7}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3900
    const-string v0, "User is not allowed to add an account!"

    const/16 v2, 0x64

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3903
    invoke-virtual {p0, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 3907
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const/16 v8, 0x8

    .line 3912
    :try_start_0
    invoke-static {}, Lcom/android/server/accounts/CryptoHelper;->getInstance()Lcom/android/server/accounts/CryptoHelper;

    move-result-object v11

    .line 3913
    invoke-virtual {v11, v0}, Lcom/android/server/accounts/CryptoHelper;->decryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3915
    invoke-virtual {p0, p1, v8, v5}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    .line 3921
    :cond_3
    const-string v11, "accountType"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3924
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3925
    const-string v0, "accountType is empty"

    const/4 v2, 0x7

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    :cond_4
    if-eqz v2, :cond_5

    .line 3937
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3941
    :cond_5
    const-string v2, "callerUid"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3942
    const-string v2, "callerPid"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3954
    invoke-virtual {p0, v4, v11, v7}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3955
    const-string v0, "User cannot modify accounts of this type (policy)."

    const/16 v2, 0x65

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3959
    invoke-virtual {p0, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 3964
    :cond_6
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v12

    .line 3966
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 3967
    sget-object v4, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_SESSION_FINISH:Ljava/lang/String;

    const-string v5, "accounts"

    invoke-virtual {p0, v2, v4, v5, v7}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v10, v0

    .line 3972
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$10;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, v11

    move-object v1, p0

    move-object v3, p1

    move/from16 v5, p3

    invoke-direct/range {v0 .. v11}, Lcom/android/server/accounts/AccountManagerService$10;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 3992
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3994
    invoke-static {v12, v13}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 3995
    throw v0

    :goto_2
    const/4 v2, 0x3

    .line 3944
    invoke-static {v9, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3945
    const-string v2, "Failed to decrypt session bundle!"

    invoke-static {v9, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3947
    :cond_7
    invoke-virtual {p0, p1, v8, v5}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    .line 3892
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    .line 3895
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3896
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 3893
    const-string v2, "User %s trying to finish session for %s without cross user permission"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3887
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sessionBundle is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 4944
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4945
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v3, p4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const/4 v0, 0x2

    .line 4946
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccount: accountType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", features "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4949
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4951
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4947
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 4956
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4958
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v9

    .line 4960
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .line 4961
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    .line 4962
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    .line 4965
    invoke-virtual {v0, p1, p0, v4}, Lcom/android/server/accounts/AccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4999
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    .line 4970
    :try_start_1
    new-instance p0, Lcom/android/server/accounts/AccountManagerService$17;

    invoke-direct {p0, v0, p1, v4}, Lcom/android/server/accounts/AccountManagerService$17;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;)V

    move-object v7, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    .line 4990
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    const/4 v8, 0x1

    move-object v5, p3

    move v6, v3

    move-object v3, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 4997
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4999
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 5000
    throw p0

    .line 4954
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accountType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4953
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "response is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;
    .locals 5

    .line 1063
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 1064
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1065
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 1066
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 1067
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    goto :goto_1

    .line 1071
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1072
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1073
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1076
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 5

    .line 635
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 636
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 637
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 638
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 639
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 640
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 643
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 641
    const-string/jumbo p1, "uid %s cannot get secrets for accounts of type: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 645
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 647
    :cond_1
    :goto_0
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 649
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .line 650
    const-string v4, "android:accounts:key_legacy_visible"

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 651
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 671
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return p0

    :cond_2
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    const/4 p0, 0x2

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 658
    :cond_3
    :try_start_1
    const-string v4, "android:accounts:key_legacy_not_visible"

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 659
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_4

    .line 671
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return p0

    :cond_4
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    const/4 p0, 0x4

    return p0

    .line 666
    :cond_5
    :try_start_2
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-virtual {p0, p2, v0, v4}, Lcom/android/server/accounts/AccountManagerService;->canCallerAccessPackage(Ljava/lang/String;II)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_6

    .line 671
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    const/4 p0, 0x3

    return p0

    .line 669
    :cond_6
    :try_start_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 671
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return p0

    :goto_1
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 672
    throw p0
.end method

.method public final getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .locals 1

    .line 687
    iget-object v0, p3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 689
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    .line 690
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 691
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 692
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 8

    .line 4586
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4587
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4588
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4590
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4591
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p0

    .line 4593
    :cond_0
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v6

    .line 4595
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    .line 4596
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4606
    invoke-static {v6, v7}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 4603
    :try_start_1
    const-string p2, "AccountManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get accounts for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 4604
    new-array p0, p0, [Landroid/accounts/Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4606
    invoke-static {v6, v7}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :goto_0
    invoke-static {v6, v7}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 4607
    throw p0
.end method

.method public getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 6

    .line 533
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 534
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x3e8

    .line 535
    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    .line 536
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 538
    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 540
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountsAndVisibilityForPackage() called from unauthorized uid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " with packageName="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 545
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 546
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_3
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v4

    .line 551
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p2

    .line 552
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    invoke-static {v4, v5}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v4, v5}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 556
    throw p0
.end method

.method public final getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .locals 8

    .line 564
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->canCallerAccessPackage(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    const-string p0, "AccountManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getAccountsAndVisibilityForPackage#Package not found "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0

    .line 569
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 570
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 571
    iget-object v2, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 572
    :try_start_0
    iget-object v3, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 573
    :try_start_1
    iget-object v4, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    if-eqz v1, :cond_1

    .line 575
    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 577
    invoke-virtual {p0, v6, p1, p4}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v7

    .line 576
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 580
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 580
    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 581
    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 583
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p4, v0, p2, p1}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 9

    .line 4675
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4676
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const/4 v6, -0x1

    const/4 v8, 0x0

    move-object v7, p3

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 4678
    :try_start_0
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 4681
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not get accounts for user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManagerService"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 4682
    new-array p0, p0, [Landroid/accounts/Account;

    return-object p0
.end method

.method public final getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .locals 9

    .line 4704
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4706
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq p2, v3, :cond_1

    if-eq v2, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 4708
    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 4711
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " trying to get account for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v3, 0x2

    .line 4715
    const-string v6, "AccountManagerService"

    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4716
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccounts: accountType "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", caller\'s uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4717
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4718
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4716
    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    :cond_2
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->getTypesManagedByCaller(II)Ljava/util/List;

    move-result-object v3

    const/4 v5, -0x1

    if-eq p4, v5, :cond_4

    .line 4727
    invoke-static {v2, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p1, :cond_4

    .line 4728
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v3, p3

    move v2, p4

    goto :goto_1

    :cond_4
    move-object v3, p5

    .line 4732
    :goto_1
    invoke-virtual {p0, v2, p2, v3}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4734
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz p1, :cond_5

    .line 4735
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    .line 4737
    :cond_5
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4739
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4740
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4744
    :cond_6
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v7

    .line 4746
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    move-object v0, p0

    move v5, p6

    .line 4747
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4757
    invoke-static {v7, v8}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 4754
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get accounts for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 4755
    new-array v0, v0, [Landroid/accounts/Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4757
    invoke-static {v7, v8}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object v0

    :goto_2
    invoke-static {v7, v8}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 4758
    throw v0

    .line 4736
    :cond_7
    :goto_3
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object v0
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 5009
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5010
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v3, p4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const/4 v0, 0x2

    .line 5011
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccounts: accountType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", features "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5014
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5016
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5012
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 5020
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5022
    invoke-virtual {p0, v3, v0, p4}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 5024
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "accounts"

    if-nez v2, :cond_1

    .line 5025
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 5027
    sget-object p2, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    invoke-virtual {p0, v6, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5029
    :try_start_0
    invoke-interface {p1, p0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 5031
    const-string p1, "Cannot respond to caller do to exception."

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 5036
    :cond_1
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v9

    .line 5038
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    if-eqz p3, :cond_2

    .line 5039
    array-length v0, p3

    if-nez v0, :cond_3

    :cond_2
    move-object v0, p0

    move-object p0, p1

    move-object v2, p2

    move-object v4, p4

    goto :goto_0

    .line 5047
    :cond_3
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v2, v1

    move v6, v3

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 5054
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5056
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :goto_0
    const/4 v5, 0x0

    .line 5040
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    .line 5042
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 5043
    invoke-virtual {p2, v6, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5044
    invoke-virtual {v0, p0, p2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5056
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 5057
    throw p0

    .line 5019
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accountType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5018
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "response is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 8

    .line 4874
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4875
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 4876
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4879
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x3e8

    .line 4884
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 4885
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4886
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p0

    .line 4888
    :cond_0
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    .line 4889
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    const/4 v7, 0x1

    .line 4892
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    move-object v4, p2

    move-object p0, v0

    .line 4881
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t determine the packageUid for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4882
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p0
.end method

.method public getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 9

    .line 4860
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    .line 4861
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4866
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v8, 0x1

    const/4 v3, 0x0

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0

    :cond_0
    move v6, p2

    .line 4863
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getAccountsForPackage() called from unauthorized uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " with uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAccountsForSystem([I)[Landroid/accounts/AccountAndUser;
    .locals 11

    .line 4653
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 4654
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, p1, v3

    .line 4655
    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    if-nez v6, :cond_0

    move-object v5, p0

    goto :goto_2

    .line 4660
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const-string v9, "android"

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v5, p0

    .line 4657
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    .line 4663
    array-length v6, p0

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, p0, v7

    .line 4664
    new-instance v9, Landroid/accounts/AccountAndUser;

    invoke-direct {v9, v8, v4}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object p0, v5

    goto :goto_0

    .line 4668
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/accounts/AccountAndUser;

    .line 4669
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/AccountAndUser;

    return-object p0
.end method

.method public getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .locals 8

    .line 6513
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Method should not be called with cacheLock"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    if-eqz p2, :cond_1

    .line 6517
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6518
    :try_start_0
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/accounts/Account;

    .line 6519
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 6521
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p0

    .line 6523
    :cond_0
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, [Landroid/accounts/Account;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 6519
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    move-object v0, p0

    move-object v3, p1

    move v5, p3

    move-object v4, p4

    move v7, p5

    .line 6529
    iget-object p0, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter p0

    .line 6530
    :try_start_2
    iget-object p1, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/accounts/Account;

    .line 6531
    array-length p4, p4

    add-int/2addr p3, p4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_2
    if-nez p3, :cond_3

    .line 6534
    sget-object p1, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    monitor-exit p0

    return-object p1

    .line 6536
    :cond_3
    new-array p1, p3, [Landroid/accounts/Account;

    .line 6538
    iget-object p3, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move p4, p2

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Landroid/accounts/Account;

    .line 6539
    array-length v1, p5

    invoke-static {p5, p2, p1, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6541
    array-length p5, p5

    add-int/2addr p4, p5

    goto :goto_1

    .line 6543
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v0

    move-object v6, v4

    move-object v4, p1

    .line 6544
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0

    .line 6543
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;
    .locals 8

    .line 4768
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4769
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-object v6, p3

    move v7, p5

    .line 4770
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4774
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move-object p0, v2

    move-object p1, v3

    move p2, v5

    move-object p3, v6

    move p5, v7

    goto :goto_0

    .line 4777
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/accounts/Account;

    const/4 p1, 0x0

    .line 4778
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 4779
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/accounts/Account;

    aput-object p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public final getAccountsOrEmptyArray(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 0

    .line 4689
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4691
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not get accounts for user "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManagerService"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 4692
    new-array p0, p0, [Landroid/accounts/Account;

    return-object p0
.end method

.method public getAllAccountsForSystemProcess()[Landroid/accounts/AccountAndUser;
    .locals 5

    .line 4637
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 4638
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 4640
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4642
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsForSystem([I)[Landroid/accounts/AccountAndUser;

    move-result-object p0

    return-object p0
.end method

.method public final getApplicationLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 3447
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    .line 3448
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 3447
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 3448
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v9, p6

    const/4 v1, 0x1

    .line 3145
    invoke-static {v9, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3146
    const-string v7, "AccountManagerService"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", notifyOnAuthFailure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p5

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3152
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3153
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3147
    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v13, p5

    :goto_0
    if-eqz v6, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 3155
    :goto_1
    const-string/jumbo v4, "response cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v3, 0x7

    if-nez v10, :cond_2

    .line 3158
    :try_start_0
    const-string v0, "getAuthToken called with null account"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    const-string v0, "account is null"

    invoke-interface {v6, v3, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    if-nez v11, :cond_3

    .line 3163
    const-string v0, "getAuthToken called with null authTokenType"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    const-string v0, "authTokenType is null"

    invoke-interface {v6, v3, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3168
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to report error back to the client."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3171
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 3172
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3176
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v14

    .line 3177
    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    iget-object v2, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3178
    invoke-static {v2}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    invoke-static {v14}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v8

    .line 3177
    invoke-interface {v15, v2, v8}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3180
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_4

    .line 3183
    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    iget-boolean v2, v2, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-eqz v2, :cond_4

    move/from16 v16, v1

    :goto_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    .line 3187
    :goto_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    if-nez v16, :cond_6

    .line 3189
    invoke-virtual {v0, v10, v11, v15, v3}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    move v13, v2

    goto :goto_6

    :cond_6
    :goto_5
    move v13, v1

    .line 3192
    :goto_6
    const-string v2, "androidPackageName"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 3196
    :try_start_2
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3198
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_c

    if-eqz v2, :cond_c

    .line 3201
    invoke-static {v2, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3210
    const-string v2, "callerUid"

    invoke-virtual {v9, v2, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3211
    const-string v2, "callerPid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v9, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v12, :cond_7

    .line 3214
    const-string/jumbo v2, "notifyOnAuthFailure"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3217
    :cond_7
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v19

    .line 3220
    :try_start_3
    invoke-virtual {v0, v4, v3}, Lcom/android/server/accounts/AccountManagerService;->calculatePackageSignatureDigest(Ljava/lang/String;I)[B

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3224
    const-string v8, "accountType"

    const-string v1, "authAccount"

    const-string v2, "authtoken"

    if-nez v16, :cond_8

    if-eqz v13, :cond_8

    .line 3225
    :try_start_4
    invoke-virtual {v0, v14, v10, v11}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 3227
    iget-object v5, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->logGetAuthTokenMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 3228
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3229
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3230
    iget-object v2, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    iget-object v1, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3232
    invoke-virtual {v0, v6, v4}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3377
    invoke-static/range {v19 .. v20}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_8
    if-eqz v16, :cond_a

    move-object v3, v11

    move-object v11, v2

    move-object v2, v10

    move-object v10, v1

    move-object v1, v14

    .line 3243
    :try_start_5
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/server/accounts/TokenCache$Value;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 3250
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->logGetAuthTokenMetrics(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 3251
    invoke-static {v7, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3252
    const-string v1, "getAuthToken: cache hit ofr custom token authenticator."

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    :cond_9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3255
    iget-object v3, v14, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    invoke-virtual {v1, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3256
    const-string v3, "android.accounts.expiry"

    iget-wide v4, v14, Lcom/android/server/accounts/TokenCache$Value;->expiryEpochMillis:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3258
    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3259
    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    invoke-virtual {v0, v6, v1}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3377
    invoke-static/range {v19 .. v20}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :cond_a
    move-object v2, v10

    move-object v1, v14

    .line 3265
    :cond_b
    :try_start_6
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$7;

    move-object v14, v4

    iget-object v4, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object/from16 v18, v1

    move-object/from16 v3, p1

    move-object/from16 v11, p3

    move-object v10, v2

    move-object/from16 v17, v5

    move/from16 v5, p5

    move-object v2, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v18}, Lcom/android/server/accounts/AccountManagerService$7;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZLjava/lang/String;IZ[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 3375
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3377
    invoke-static/range {v19 .. v20}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :goto_7
    invoke-static/range {v19 .. v20}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 3378
    throw v0

    :cond_c
    move-object v14, v4

    .line 3204
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, v14}, [Ljava/lang/Object;

    move-result-object v0

    .line 3202
    const-string v1, "Uid %s is attempting to illegally masquerade as package %s!"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3206
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v0

    .line 3198
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3199
    throw v0

    :catchall_2
    move-exception v0

    .line 3180
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3181
    throw v0
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 3091
    :goto_0
    const-string v3, "accountType cannot be null"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p3, :cond_1

    move v0, v1

    .line 3092
    :cond_1
    const-string v1, "authTokenType cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3094
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    move-result v0

    .line 3095
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 3096
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_2

    .line 3099
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3100
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 3102
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 3103
    new-instance v3, Lcom/android/server/accounts/AccountManagerService$6;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v12, p2

    move-object v4, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v13, p3

    invoke-direct/range {v3 .. v13}, Lcom/android/server/accounts/AccountManagerService$6;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 3131
    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3133
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 3134
    throw p0

    .line 3097
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "can only call from system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 4

    .line 1750
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x2

    .line 1751
    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthenticatorTypes: for user id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1752
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1766
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1768
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypesInternal(II)[Landroid/accounts/AuthenticatorDescription;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1771
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 1772
    throw p0

    .line 1759
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 1762
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1763
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1760
    const-string v0, "User %s tying to get authenticator types for %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAuthenticatorTypesInternal(II)[Landroid/accounts/AuthenticatorDescription;
    .locals 4

    .line 1779
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->updateServices(I)V

    .line 1781
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v0

    .line 1782
    new-instance v1, Ljava/util/ArrayList;

    .line 1783
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1785
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1786
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/accounts/AccountManagerService;->canCallerAccessPackage(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1787
    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1790
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/accounts/AuthenticatorDescription;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/AuthenticatorDescription;

    return-object p0
.end method

.method public getBindInstantServiceAllowed(I)Z
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {p0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getBindInstantServiceAllowed(I)Z

    move-result p0

    return p0
.end method

.method public final getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3

    .line 6650
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 6653
    :catch_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .locals 3

    .line 3480
    invoke-static {p4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p0

    monitor-enter p0

    .line 3481
    :try_start_0
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3483
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3484
    invoke-static {p4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    if-nez v1, :cond_0

    .line 3486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountManagerService:38:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3487
    invoke-virtual {p1}, Landroid/accounts/Account;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3489
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    const/16 p2, 0x26

    invoke-direct {v1, p1, p2}, Lcom/android/server/accounts/AccountManagerService$NotificationId;-><init>(Ljava/lang/String;I)V

    .line 3490
    invoke-static {p4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3492
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getDefaultCantAddAccountIntent(I)Landroid/content/Intent;
    .locals 2

    .line 4025
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/accounts/CantAddAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4026
    const-string p0, "android.accounts.extra.ERROR_CODE"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 4027
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public final getPackageNameForUid(I)Ljava/lang/String;
    .locals 7

    .line 4335
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 4336
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 4339
    aget-object v1, p1, v0

    .line 4340
    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    return-object v1

    .line 4345
    :cond_1
    array-length v2, p1

    const v3, 0x7fffffff

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    .line 4347
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 4349
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v6, v3, :cond_2

    move-object v1, v5

    move v3, v6

    :catch_0
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .locals 5

    .line 588
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 589
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 590
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 591
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 592
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 593
    :cond_0
    const-string/jumbo p0, "uid %s cannot get secrets for account %s"

    .line 594
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 595
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 598
    :cond_1
    :goto_0
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 600
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 601
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 602
    :try_start_1
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 607
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 604
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    .line 605
    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    .line 607
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 608
    throw p0
.end method

.method public final getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .locals 1

    .line 623
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    .line 625
    const-string p0, "AccountManagerService"

    const-string v0, "Visibility was not initialized"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 627
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    :cond_0
    return-object p0
.end method

.method public final getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 2113
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    const-string p2, ","

    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2116
    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 4

    .line 1636
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x2

    .line 1637
    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPassword: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1638
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    .line 1643
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1644
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1651
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 1653
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1654
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1656
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 1657
    throw p0

    .line 1647
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 1645
    const-string/jumbo p1, "uid %s cannot get secrets for accounts of type: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1649
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1642
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 1679
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviousName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1680
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1685
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1686
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1688
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1689
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1691
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 1692
    throw p0
.end method

.method public final getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .locals 6

    .line 1045
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1046
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmReceiversForType(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 1047
    :try_start_0
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v3, 0x0

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    .line 1048
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmReceiversForType(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 1050
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1053
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1055
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1056
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    return-object v1

    .line 1053
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getRunningAccountsForSystem()[Landroid/accounts/AccountAndUser;
    .locals 1

    .line 4620
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4625
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccountsForSystem([I)[Landroid/accounts/AccountAndUser;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 4623
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getSharedAccountsAsUser(I)[Landroid/accounts/Account;
    .locals 3

    .line 4842
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p1

    .line 4844
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p0

    .line 4845
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4846
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->getSharedAccounts()Ljava/util/List;

    move-result-object p0

    .line 4847
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/accounts/Account;

    .line 4848
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4849
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 4850
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 4852
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get shared accounts for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 4853
    new-array p0, p0, [Landroid/accounts/Account;

    return-object p0
.end method

.method public final getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .locals 3

    .line 3498
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetsigninRequiredNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p0

    monitor-enter p0

    .line 3499
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetsigninRequiredNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    if-nez v0, :cond_0

    .line 3501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountManagerService:37:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3502
    invoke-virtual {p2}, Landroid/accounts/Account;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3504
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    const/16 v2, 0x25

    invoke-direct {v1, v0, v2}, Lcom/android/server/accounts/AccountManagerService$NotificationId;-><init>(Ljava/lang/String;I)V

    .line 3505
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetsigninRequiredNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3507
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getTypesForCaller(IIZ)Ljava/util/List;
    .locals 4

    .line 6067
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6068
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6071
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {p0, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6073
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6076
    const-class p2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageManagerInternal;

    .line 6078
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    if-nez p3, :cond_1

    .line 6079
    iget v2, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    const/16 v3, 0x10

    invoke-virtual {p2, v2, p1, v3}, Landroid/content/pm/PackageManagerInternal;->hasSignatureCapability(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6081
    :cond_1
    iget-object v1, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :catchall_0
    move-exception p0

    .line 6073
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6074
    throw p0
.end method

.method public final getTypesManagedByCaller(II)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 6062
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;
    .locals 0

    const/4 p3, 0x1

    .line 6058
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUidsOfInstalledOrUpdatedPackagesAsUser(I)Landroid/util/SparseBooleanArray;
    .locals 3

    .line 1403
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v0, 0x2000

    .line 1404
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    .line 1406
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1407
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 1408
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1410
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 5

    .line 1440
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsNotChecked(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 1442
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " due to exception ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") reading its account database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne p1, v1, :cond_0

    if-eqz p1, :cond_0

    .line 1451
    const-string v1, "Switching to system user first"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not switch to 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->removeUserEvenWhenDisallowed(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1459
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not remove user "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_1
    throw v0

    .line 1444
    :cond_2
    throw v0
.end method

.method public final getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 1

    .line 1435
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p0

    return-object p0
.end method

.method public final getUserAccountsNotChecked(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 8

    .line 1466
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1467
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1470
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v3, p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getPreNDatabaseName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1471
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v4, p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getDeDatabaseName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1472
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p1, v1, v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;-><init>(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 1473
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1474
    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1475
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    move v3, v2

    move-object v1, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    .line 1479
    :goto_0
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->isCeDatabaseAttached()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1480
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is unlocked - opening CE database"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1482
    :try_start_1
    iget-object v5, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1483
    :try_start_2
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v7, p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getCeDatabaseName(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1484
    iget-object p1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1, v6}, Lcom/android/server/accounts/AccountsDb;->attachCeDatabase(Ljava/io/File;)V

    .line 1485
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1486
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1487
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_1

    :catchall_2
    move-exception p0

    .line 1485
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0

    .line 1486
    :goto_1
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p0

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 1490
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 1492
    :cond_2
    monitor-exit v0

    return-object v1

    .line 1493
    :goto_3
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1716
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x2

    .line 1717
    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1719
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, p2, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 1718
    const-string v3, "getUserData( account: %s, key: %s, callerUid: %s, pid: %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1720
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1723
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1724
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1725
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1732
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 1733
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "User "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data is locked. callingUid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 1736
    :cond_1
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 1738
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1739
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 1744
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object v4

    .line 1742
    :cond_2
    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1744
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 1745
    throw p0

    .line 1728
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 1726
    const-string/jumbo p1, "uid %s cannot get user data for accounts of type: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1730
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1150
    :cond_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 7

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_4

    .line 6289
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 6290
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6291
    :try_start_0
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6292
    :try_start_1
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    .line 6294
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5, v3, v4, p2, p3}, Lcom/android/server/accounts/AccountsDb;->insertGrant(JLjava/lang/String;I)J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 6297
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p2

    .line 6296
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    const/4 p2, 0x1

    .line 6301
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 6302
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6303
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6307
    iget-object p2, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    .line 6308
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v2, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1, p3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 6302
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 6303
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 6286
    :cond_3
    :goto_4
    const-string p0, "AccountManagerService"

    const-string p1, "grantAppPermission: called with invalid arguments"

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3

    .line 4922
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4923
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->startChooseAccountActivityWithAccounts(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    return-void

    .line 4926
    :cond_0
    array-length p3, p2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 4927
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    .line 4928
    aget-object v1, p2, v0

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "authAccount"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4929
    aget-object p2, p2, v0

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v0, "accountType"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4930
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void

    .line 4934
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method public final handleIncomingUser(I)I
    .locals 8

    .line 5892
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5893
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v6, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v3, p1

    .line 5892
    :try_start_1
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_0
    move v3, p1

    :catch_1
    return v3
.end method

.method public final hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 4365
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 4373
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0, p1, v1, p3, v2}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 4380
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p3

    .line 4379
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v2, :cond_3

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method public hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3

    .line 4313
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 4316
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4317
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4318
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4320
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    const v0, 0x7fffffff

    .line 4322
    const-string/jumbo v1, "user must be concrete"

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 4325
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p3

    .line 4326
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "hasAccountAccess#Package not found "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4314
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can be called only by system UID"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasCopyAccountsPermission()Z
    .locals 1

    .line 1869
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.COPY_ACCOUNTS"

    .line 1870
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 7

    .line 6118
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 6121
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p0

    .line 6122
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6123
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_1

    .line 6126
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 6127
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/accounts/AccountsDb;->findMatchingGrantsCount(ILjava/lang/String;Landroid/accounts/Account;)J

    move-result-wide v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 6129
    :cond_1
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0, p3, p1}, Lcom/android/server/accounts/AccountsDb;->findMatchingGrantsCountAnyToken(ILandroid/accounts/Account;)J

    move-result-wide v3

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-lez p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_3

    .line 6134
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6137
    const-string p0, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no credentials permission for usage of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6138
    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " by uid "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but ignoring since device is in test harness."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6137
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6141
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v2

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 6143
    :cond_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return p0

    .line 6144
    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    .line 6145
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 2147
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2148
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p5}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 2149
    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasFeatures: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", features "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2152
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", userId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2155
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2150
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 2157
    :goto_0
    const-string v4, "account cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 2158
    :goto_1
    const-string/jumbo v4, "response cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p3, :cond_3

    move v1, v2

    .line 2159
    :cond_3
    const-string v2, "features cannot be null"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2161
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq p4, v1, :cond_5

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 2163
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 2166
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " trying to check account features for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2170
    :cond_5
    :goto_2
    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p4, p5}, Lcom/android/server/accounts/AccountManagerService;->checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V

    .line 2173
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 2175
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p4

    move-object p5, p3

    move-object p3, p1

    move-object p1, p0

    .line 2176
    new-instance p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;

    move-object v5, p4

    move-object p4, p2

    move-object p2, v5

    invoke-direct/range {p0 .. p5}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2178
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2179
    throw p0
.end method

.method public final hasRemoveAccountsPermission()Z
    .locals 1

    .line 2496
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.REMOVE_ACCOUNTS"

    .line 2497
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 3

    .line 6387
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 6388
    array-length v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 6389
    new-array v2, v2, [Landroid/accounts/Account;

    if-eqz p0, :cond_1

    .line 6391
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6393
    :cond_1
    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 6394
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6395
    :goto_1
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p2, p0}, Landroid/accounts/Account;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    aput-object v0, v2, v1

    .line 6396
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object p1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6397
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 6398
    aget-object p0, v2, v1

    return-object p0
.end method

.method public final installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V
    .locals 10

    .line 5811
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 5813
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Injector;->getNotificationManager()Landroid/app/INotificationManager;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5817
    :try_start_1
    const-string v5, "android"

    iget-object v6, p1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$NotificationId;->-$$Nest$fgetmId(Lcom/android/server/accounts/AccountManagerService$NotificationId;)I

    move-result v7

    move-object v8, p2

    move-object v4, p3

    move v9, p4

    invoke-interface/range {v3 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 5823
    :catch_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5824
    throw p0
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 2699
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2700
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2701
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2702
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2703
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalidateAuthToken: accountType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pid "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2705
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2703
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2708
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 2710
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2712
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2713
    :try_start_1
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2715
    :try_start_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2716
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2718
    :try_start_3
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2720
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2721
    :try_start_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 2722
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/accounts/Account;

    .line 2723
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const/4 v8, 0x0

    .line 2724
    invoke-virtual {p0, v0, v7, v6, v8}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2727
    :cond_1
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetaccountTokenCaches(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/TokenCache;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2729
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2731
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 2728
    :goto_1
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p0

    :catchall_2
    move-exception p0

    .line 2718
    iget-object p1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2719
    throw p0

    .line 2729
    :goto_2
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception p0

    .line 2731
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2732
    throw p0
.end method

.method public final invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 2738
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2739
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/accounts/AccountsDb;->findAuthtokenForAllAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 2742
    :goto_0
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2743
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2744
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 2745
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2746
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, v0}, Lcom/android/server/accounts/AccountsDb;->deleteAuthToken(Ljava/lang/String;)Z

    .line 2747
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2750
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return-object p0

    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 2751
    throw p0
.end method

.method public final isAccountManagedByCaller(Ljava/lang/String;II)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6052
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getTypesManagedByCaller(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 6088
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6089
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    array-length p2, p0

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v2, p0, v0

    .line 6090
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5971
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 5972
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x2

    .line 4187
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCredentialsUpdateSuggested: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4191
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4188
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 4199
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4203
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4204
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v11

    .line 4206
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 4207
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$14;

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/server/accounts/AccountManagerService$14;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;)V

    .line 4261
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4263
    invoke-static {v11, v12}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v11, v12}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 4264
    throw v0

    .line 4200
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "status token is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4197
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4194
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isCrossUser(II)Z
    .locals 1

    .line 1794
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1796
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isFirstAccountRemovalDisabled(Landroid/accounts/Account;)Z
    .locals 9

    .line 6688
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 6694
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111006d

    .line 6695
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 6700
    :cond_1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 6701
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "allow_primary_gaia_account_removal_for_tests"

    .line 6700
    invoke-static {v0, v2, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 6709
    :cond_2
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 6710
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040205

    .line 6711
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 6713
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 6718
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 6719
    const-string v7, "android"

    const/4 v8, 0x0

    const/16 v6, 0x3e8

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    .line 6721
    array-length v0, p0

    if-lez v0, :cond_4

    aget-object p0, p0, v1

    invoke-virtual {p0, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public final isLocalUnlockedUser(I)Z
    .locals 1

    .line 2120
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2121
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 2122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final varargs isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 9

    .line 5846
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 5848
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    .line 5849
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 5850
    array-length v5, p3

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, p3, v6

    .line 5851
    invoke-interface {v4, v7, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_1

    .line 5854
    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 5855
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v8, v7, v3, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 5864
    :cond_0
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5865
    throw p0

    :goto_3
    return v2
.end method

.method public final isPreOApplication(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    .line 782
    :try_start_0
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 787
    :try_start_2
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_1

    .line 791
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p1, 0x1a

    if-ge p0, p1, :cond_0

    return v0

    :cond_0
    return v3

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    .line 787
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 788
    throw p0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 796
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isPreOApplication#Package not found "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final isPrivileged(I)Z
    .locals 9

    .line 5902
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5904
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5905
    const-string v3, "AccountManagerService"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 5906
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No packages for callingUid "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5923
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5909
    :cond_0
    :try_start_2
    array-length p1, v2

    move v5, v4

    :goto_0
    if-ge v5, p1, :cond_2

    aget-object v6, v2, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5911
    :try_start_3
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5912
    invoke-virtual {v7, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5913
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_1

    .line 5923
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v6

    .line 5919
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isPrivileged#Package not found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5923
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5924
    throw p0
.end method

.method public final isProfileOwner(I)Z
    .locals 1

    .line 6229
    const-class p0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 6230
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz p0, :cond_1

    .line 6232
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isSpecialPackageKey(Ljava/lang/String;)Z
    .locals 0

    .line 1103
    const-string p0, "android:accounts:key_legacy_visible"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "android:accounts:key_legacy_not_visible"

    .line 1104
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isSystemUid(I)Z
    .locals 9

    .line 6149
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 6153
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6156
    const-string v4, "AccountManagerService"

    if-eqz v0, :cond_2

    .line 6157
    :try_start_1
    array-length p1, v0

    move v5, v1

    :goto_0
    if-ge v5, p1, :cond_3

    aget-object v6, v0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6159
    :try_start_2
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6160
    invoke-virtual {v7, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 6161
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v7, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    .line 6174
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 6167
    :try_start_3
    const-string v8, "Could not find package [%s]"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6171
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No known packages with uid "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6174
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6175
    throw p0
.end method

.method public final isVisible(I)Z
    .locals 1

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public final synthetic lambda$canUserModifyAccountsForType$3(IILjava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 6210
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6211
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 6213
    :cond_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string p1, "device_policy"

    .line 6214
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 6215
    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 6217
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 6219
    :cond_1
    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_3

    aget-object v0, p0, p2

    .line 6220
    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6221
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 6224
    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic lambda$onUnlockUser$1(I)V
    .locals 0

    .line 1608
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->syncSharedAccounts(I)V

    return-void
.end method

.method public final synthetic lambda$removeAccountInternal$2(Landroid/accounts/Account;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 1

    const/4 v0, 0x0

    .line 2685
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    return-void
.end method

.method public final logAddAccountExplicitlyMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const/16 v0, 0xcb

    .line 2075
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 2077
    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2078
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2079
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->findPackagesPerVisibility(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p0

    .line 2076
    invoke-virtual {v0, p2, p1, p0}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 2080
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method

.method public final logAddAccountMetrics(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 p0, 0xca

    .line 3654
    invoke-static {p0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 3656
    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3657
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3658
    invoke-static {p4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p3, :cond_0

    .line 3660
    const-string p3, ""

    goto :goto_0

    .line 3661
    :cond_0
    const-string v0, ";"

    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    filled-new-array {p2, p1, p4, p3}, [Ljava/lang/String;

    move-result-object p1

    .line 3655
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 3662
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method

.method public final logGetAuthTokenMetrics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/16 p0, 0xcc

    .line 3384
    invoke-static {p0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 3386
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3387
    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 3385
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 3388
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method

.method public final logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v5, p1

    move-object v1, p2

    move-object v2, p3

    .line 5599
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    return-void
.end method

.method public final logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 7

    .line 5611
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    return-void
.end method

.method public final logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .locals 10

    .line 5668
    iget-object v0, p5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->reserveDebugDbInsertionPoint()J

    move-result-wide v8

    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    .line 5670
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;-><init>(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;IJ)V

    .line 5672
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v5, p1

    move-object v1, p2

    move-object v2, p3

    move v6, p4

    .line 5603
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    return-void
.end method

.method public final needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3

    .line 4897
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 4898
    :cond_0
    array-length v0, p1

    if-le v0, v2, :cond_1

    return v2

    .line 4899
    :cond_1
    aget-object p1, p1, v1

    .line 4900
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 4901
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3

    .line 3458
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p6, :cond_0

    const/high16 p6, 0x10000000

    .line 3464
    invoke-virtual {v0, p6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3466
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p6

    invoke-virtual {p0, p6}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p6

    .line 3467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p5, p3, p6}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 3468
    :cond_1
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3467
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3469
    const-string p0, "account"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3470
    const-string p0, "authTokenType"

    invoke-virtual {v0, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3471
    const-string/jumbo p0, "response"

    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3472
    const-string/jumbo p0, "uid"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public final newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .locals 7

    .line 4423
    new-instance v4, Landroid/accounts/AccountAuthenticatorResponse;

    new-instance v0, Lcom/android/server/accounts/AccountManagerService$16;

    invoke-direct {v0, p0, p3, p1, p4}, Lcom/android/server/accounts/AccountManagerService$16;-><init>(Lcom/android/server/accounts/AccountManagerService;ILandroid/accounts/Account;Landroid/os/RemoteCallback;)V

    invoke-direct {v4, v0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    const-string v5, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 3

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifying package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sending broadcast of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccountManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    .line 1037
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1038
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onAccountAccessed(Ljava/lang/String;)V
    .locals 9

    .line 5062
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5063
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    return-void

    .line 5066
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 5067
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5069
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 5070
    invoke-virtual {v6}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    .line 5074
    invoke-virtual {p0, v6, v7, v0}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 5075
    const-string v7, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v0, v8}, Lcom/android/server/accounts/AccountManagerService;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5081
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5082
    throw p0
.end method

.method public final onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 3

    .line 3069
    const-string v0, "AccountManagerService"

    if-nez p2, :cond_0

    .line 3070
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v2, "the result is unexpectedly null"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x2

    .line 3072
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3073
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " calling onResult() on response "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3081
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3082
    const-string p1, "failure while notifying response"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V
    .locals 0

    .line 1626
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1628
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onServiceChanged: ignore removed user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1631
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .locals 0

    .line 162
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 5089
    new-instance v0, Lcom/android/server/accounts/AccountManagerServiceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1135
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/accounts/IAccountManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1139
    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_0

    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    if-nez p1, :cond_0

    .line 1140
    const-string p1, "AccountManagerService"

    const-string p2, "Account Manager Crash"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1142
    :cond_0
    throw p0
.end method

.method public onUnlockUser(I)V
    .locals 3

    .line 1601
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1602
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1605
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1606
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v2, :cond_1

    return-void

    .line 1608
    :cond_1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v1, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accounts/AccountManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 1606
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onUserUnlocked(Landroid/content/Intent;)V
    .locals 2

    .line 1597
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUnlockUser(I)V

    return-void
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2817
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x2

    .line 2818
    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peekAuthToken: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2822
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2819
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2825
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2826
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2827
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2834
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2835
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Authtoken not available - user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data is locked. callingUid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2839
    :cond_1
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 2841
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2842
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2844
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2845
    throw p0

    .line 2830
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2828
    const-string/jumbo p1, "uid %s cannot peek the authtokens associated with accounts of type: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2832
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z
    .locals 6

    .line 5930
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    const-string v3, "Access to "

    const/4 v4, 0x2

    const-string v5, "AccountManagerService"

    if-ne v0, v1, :cond_1

    .line 5931
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5932
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " granted calling uid is system"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    .line 5937
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isPrivileged(I)Z

    move-result v0

    const-string v1, " granted calling uid "

    if-eqz v0, :cond_3

    .line 5938
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 5939
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " privileged"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    if-eqz p1, :cond_5

    .line 5944
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 5945
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 5946
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " manages the account"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2

    :cond_5
    if-eqz p1, :cond_7

    .line 5951
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 5952
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 5953
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " user granted access"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v2

    .line 5959
    :cond_7
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 5960
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not granted for uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 7

    .line 1521
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1522
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1525
    :try_start_1
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->findAllUidGrants()Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1530
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1531
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1535
    :cond_0
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleting grants for UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " because its package is no longer installed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v3}, Lcom/android/server/accounts/AccountsDb;->deleteGrantsByUid(I)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1539
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1540
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1527
    :try_start_4
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete grants for user = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1528
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    .line 1539
    :goto_1
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p0

    .line 1540
    :goto_2
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0
.end method

.method public final purgeOldGrantsAll()V
    .locals 3

    .line 1513
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1514
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1515
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1517
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final purgeUserData(I)V
    .locals 3

    .line 1579
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1580
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 1581
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1582
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1583
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 1584
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    .line 1586
    iget-object p0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1587
    :try_start_1
    iget-object p1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1588
    :try_start_2
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->closeDebugStatement()V

    .line 1589
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->close()V

    .line 1590
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1591
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 1590
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 1591
    :goto_0
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    :cond_0
    return-void

    :catchall_2
    move-exception p0

    .line 1584
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method public readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 6604
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6605
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 6607
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 6609
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6611
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6612
    :try_start_1
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 6613
    :try_start_2
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1

    .line 6616
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, p2}, Lcom/android/server/accounts/AccountsDb;->findAuthTokensByAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v2

    .line 6617
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6618
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->recomputeCacheSizeForAccountLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 6620
    :cond_1
    :goto_0
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object p0

    :catchall_2
    move-exception p0

    goto :goto_2

    .line 6621
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    .line 6622
    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    .line 6609
    :goto_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/server/accounts/TokenCache$Value;
    .locals 0

    .line 6575
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter p0

    .line 6576
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetaccountTokenCaches(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/accounts/TokenCache;->get(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/server/accounts/TokenCache$Value;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6578
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1664
    :cond_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1665
    const-string p0, "AccountManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Password is not available - user "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data is locked"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1669
    :cond_1
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1670
    :try_start_0
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1671
    :try_start_1
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1672
    invoke-virtual {p1, v1, p2}, Lcom/android/server/accounts/AccountsDb;->findAccountPasswordByNameAndType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 1673
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    .line 1674
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 3

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1699
    :cond_0
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1700
    :try_start_0
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1701
    :try_start_1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetpreviousNameCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v1, :cond_1

    .line 1703
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 1704
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 1705
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetpreviousNameCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_0

    .line 1708
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object p1

    .line 1710
    :goto_0
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    .line 1711
    :goto_1
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final readUserDataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 6628
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6629
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 6630
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_1

    .line 6633
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6634
    :try_start_1
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6635
    :try_start_2
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_0

    .line 6638
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, p2}, Lcom/android/server/accounts/AccountsDb;->findUserExtrasForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v2

    .line 6639
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6640
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->recomputeCacheSizeForAccountLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6642
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6643
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 6642
    :goto_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0

    .line 6643
    :goto_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    .line 6645
    :cond_1
    :goto_3
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :catchall_2
    move-exception p0

    .line 6630
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method public final recomputeCacheSizeForAccountLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .locals 5

    .line 1207
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1208
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1211
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1212
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/accounts/AccountManagerService;->computeEntrySize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 1216
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1217
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lcom/android/server/accounts/AccountManagerService;->computeEntrySize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_1

    .line 1220
    :cond_1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmCacheSizeForAccount(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 945
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 946
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 948
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 949
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 951
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 952
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->registerAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 955
    throw p0
.end method

.method public final registerAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 5

    .line 960
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmReceiversForType(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 963
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 965
    :cond_0
    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 966
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmReceiversForType(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_1

    .line 968
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 969
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmReceiversForType(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    :cond_1
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 972
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v4, v2

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 974
    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .locals 9

    .line 2405
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2406
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2407
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2410
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", for user id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2407
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 2413
    :goto_0
    const-string v3, "account cannot be null"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p1, :cond_2

    move v0, v1

    .line 2414
    :cond_2
    const-string/jumbo v1, "response cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2417
    invoke-virtual {p0, v6, p4}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2429
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 2430
    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v1, v6, v0}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2431
    invoke-virtual {p0, v6}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2432
    invoke-virtual {p0, v6}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2433
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->hasRemoveAccountsPermission()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 2434
    :cond_3
    const-string/jumbo p0, "uid %s cannot remove accounts of type: %s"

    .line 2436
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 2434
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2438
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2440
    :cond_4
    :goto_1
    invoke-virtual {p0, p4, v6}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2442
    :try_start_0
    const-string p0, "User cannot modify accounts"

    const/16 p2, 0x64

    invoke-interface {p1, p2, p0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    .line 2448
    :cond_5
    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, p4, v0, v6}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    const/16 v1, 0x65

    if-nez v0, :cond_6

    .line 2450
    :try_start_1
    const-string p0, "User cannot modify accounts of this type (policy)."

    invoke-interface {p1, v1, p0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 2453
    const-string p1, "AccountManagerService"

    const-string p2, "RemoteException while removing account"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2457
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isFirstAccountRemovalDisabled(Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2459
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "User cannot remove the first "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " account on the device."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 2465
    const-string p1, "AccountManagerService"

    const-string p2, "RemoteException while removing account"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_2
    :goto_2
    return-void

    .line 2469
    :cond_7
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v7

    .line 2470
    invoke-virtual {p0, p4}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 2471
    invoke-virtual {p0, v2, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p4

    invoke-virtual {p0, p4, v2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2472
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 2474
    :try_start_3
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_8
    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2475
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2476
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 2477
    invoke-virtual {p0, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    .line 2480
    :cond_9
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2481
    iget-object p4, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p4, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    .line 2482
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    move-object v5, v2

    const-string v2, "accounts"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    move-object v1, v0

    .line 2489
    :try_start_4
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;

    move-object v3, p1

    move-object v4, p2

    move-object v2, v5

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2491
    invoke-static {v7, v8}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v7, v8}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2492
    throw p0

    .line 2480
    :goto_4
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    .line 2418
    :cond_a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "User %s tying remove account for %s"

    .line 2421
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 2422
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 2419
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;)Z
    .locals 7

    .line 2503
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v0, 0x2

    .line 2504
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeAccountExplicitly: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2507
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2505
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 2515
    const-string p0, "account is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2517
    :cond_1
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3, v6, v0}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2524
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isFirstAccountRemovalDisabled(Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2525
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot remove the first "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " account on the device."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2528
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 2529
    iget-object v0, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    .line 2530
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    const-string v2, "accounts"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 2536
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 2538
    :try_start_0
    invoke-virtual {v0, v5, p1, v6}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2540
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2541
    throw p0

    .line 2520
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2518
    const-string/jumbo p1, "uid %s cannot explicitly remove accounts of type: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2522
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .locals 5

    .line 6355
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    if-eqz p0, :cond_3

    .line 6357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6358
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 6359
    invoke-virtual {v3, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6360
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6363
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6364
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6366
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/accounts/Account;

    .line 6367
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    .line 6368
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6371
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6372
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6373
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetpreviousNameCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6374
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6375
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmCacheSizeForAccount(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6377
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    return-void
.end method

.method public removeAccountInternal(Landroid/accounts/Account;)V
    .locals 2

    .line 2593
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    return-void
.end method

.method public final removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    .line 2598
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2600
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " while user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is still locked. CE data will be removed later"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    :cond_0
    iget-object v8, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2605
    :try_start_0
    iget-object v9, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 2606
    :try_start_1
    invoke-virtual {v0, v6, v5}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v2

    .line 2609
    invoke-virtual {v0, v6, v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v3

    .line 2610
    iget-object v4, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2615
    :try_start_2
    iget-object v4, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v6}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-ltz v4, :cond_1

    .line 2617
    iget-object v4, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v10, v11}, Lcom/android/server/accounts/AccountsDb;->deleteDeAccount(J)Z

    move-result v4

    :goto_0
    move v14, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_2

    .line 2622
    iget-object v4, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    move-wide v15, v12

    invoke-virtual {v4, v6}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    move-result-wide v12

    cmp-long v4, v12, v15

    if-ltz v4, :cond_2

    .line 2624
    iget-object v4, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v12, v13}, Lcom/android/server/accounts/AccountsDb;->deleteCeAccount(J)Z

    .line 2627
    :cond_2
    iget-object v4, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2629
    :try_start_3
    iget-object v4, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    if-eqz v14, :cond_8

    .line 2632
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 2634
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 2633
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2635
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_4

    .line 2636
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    .line 2638
    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    goto :goto_2

    .line 2643
    :cond_5
    const-string v2, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "callingUid="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", userId="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " removed account"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    iget-object v4, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v12, "removeAccount"

    invoke-virtual {v0, v2, v4, v12}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 2647
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2648
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    const-string/jumbo v12, "removeAccount"

    invoke-virtual {v0, v6, v3, v4, v12}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_7

    .line 2651
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    goto :goto_5

    .line 2652
    :cond_7
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE_DE:Ljava/lang/String;

    .line 2653
    :goto_5
    iget-object v2, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v3, 0x3

    const/16 v4, 0x3b7

    invoke-static {v4, v2, v7, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    .line 2658
    const-string v2, "accounts"

    move-wide v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2660
    :cond_8
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2661
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 2662
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2664
    :try_start_5
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 2665
    invoke-virtual {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2667
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v4

    .line 2668
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 2669
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v9

    if-eqz v9, :cond_9

    iget v9, v8, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v3, v9, :cond_9

    .line 2670
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v6, v8, v7}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_a

    .line 2675
    :cond_a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v14, :cond_d

    .line 2679
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 2681
    :try_start_6
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2682
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 2683
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2684
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2685
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v7, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0, v6, v3, v5}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_8

    .line 2689
    :cond_c
    monitor-exit v1

    goto :goto_9

    :goto_8
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 2692
    :cond_d
    :goto_9
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountUserDataCaches()V

    return v14

    .line 2675
    :goto_a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2676
    throw v0

    :catchall_4
    move-exception v0

    goto :goto_d

    .line 2629
    :goto_b
    :try_start_7
    iget-object v1, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2630
    throw v0

    .line 2660
    :goto_c
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 2661
    :goto_d
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0
.end method

.method public final removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    .locals 7

    .line 4829
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p2

    .line 4830
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 4831
    iget-object p2, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p2, p1}, Lcom/android/server/accounts/AccountsDb;->findSharedAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    .line 4832
    iget-object p2, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p2, p1}, Lcom/android/server/accounts/AccountsDb;->deleteSharedAccount(Landroid/accounts/Account;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4834
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    const-string/jumbo v2, "shared_accounts"

    move-object v0, p0

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 4836
    invoke-virtual {v0, v5, p1, v6}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    :cond_0
    return p2
.end method

.method public final removeVisibilityValuesForPackage(Ljava/lang/String;)V
    .locals 8

    .line 1544
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 1547
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1548
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1550
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1552
    :try_start_1
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_6

    .line 1556
    :catch_0
    :try_start_2
    iget-object v4, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, p1}, Lcom/android/server/accounts/AccountsDb;->deleteAccountVisibilityForPackage(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1562
    :try_start_3
    iget-object v4, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1563
    :try_start_4
    iget-object v5, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1564
    :try_start_5
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/accounts/Account;

    .line 1566
    invoke-virtual {p0, v7, v3}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v7

    .line 1567
    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 1569
    :cond_1
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 1570
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1571
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_3

    .line 1570
    :goto_2
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    .line 1571
    :goto_3
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw p0

    :catch_1
    move-exception v4

    .line 1558
    const-string v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not delete account visibility for user = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1574
    :cond_2
    monitor-exit v0

    :goto_5
    return-void

    :goto_6
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method public renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7

    .line 2242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x2

    .line 2243
    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renameAccount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2246
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2244
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_5

    if-eqz p3, :cond_2

    .line 2249
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc8

    if-gt v1, v3, :cond_1

    goto :goto_0

    .line 2250
    :cond_1
    const-string/jumbo p0, "renameAccount failed - account name longer than 200"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account name longer than 200"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2253
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2254
    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2261
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v3

    .line 2263
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .line 2264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callingUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", userId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " performing rename account"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, p0

    .line 2270
    :goto_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 2271
    const-string p3, "authAccount"

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    const-string p3, "accountType"

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    const-string p3, "accountAccessId"

    .line 2274
    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object p2

    .line 2273
    invoke-virtual {p0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2276
    :try_start_1
    invoke-interface {p1, p0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 2278
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2281
    :goto_2
    invoke-static {v3, v4}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    invoke-static {v3, v4}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2282
    throw p0

    .line 2257
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2255
    const-string/jumbo p1, "uid %s cannot rename accounts of type: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2259
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2248
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 10

    .line 2298
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    .line 2297
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2300
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 2302
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2303
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2304
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 2305
    invoke-virtual {p0, v2, p1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    .line 2308
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2309
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2310
    :try_start_1
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2312
    :try_start_2
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v2

    .line 2313
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V

    .line 2314
    new-instance v3, Landroid/accounts/Account;

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v3, p3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2316
    :try_start_3
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v3}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-ltz v4, :cond_2

    .line 2317
    const-string p0, "AccountManagerService"

    const-string/jumbo p2, "renameAccount failed - account with new name already exists"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2335
    :try_start_4
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v5

    :catchall_1
    move-exception p0

    goto/16 :goto_6

    :catchall_2
    move-exception p0

    goto/16 :goto_5

    :catchall_3
    move-exception p0

    goto/16 :goto_4

    .line 2320
    :cond_2
    :try_start_6
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-ltz v4, :cond_7

    .line 2322
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v8, v9, p3}, Lcom/android/server/accounts/AccountsDb;->renameCeAccount(JLjava/lang/String;)Z

    .line 2323
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v8, v9, p3, v6}, Lcom/android/server/accounts/AccountsDb;->renameDeAccount(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2325
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2335
    :try_start_7
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2341
    invoke-virtual {p0, p1, v3}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v3

    .line 2347
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 2348
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 2349
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 2350
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 2355
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2356
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2357
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2358
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetpreviousNameCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2362
    invoke-virtual {p0, p1, v3}, Lcom/android/server/accounts/AccountManagerService;->recomputeCacheSizeForAccountLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 2364
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    .line 2365
    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2370
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v5

    .line 2371
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 2372
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v6, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v7, v4, :cond_3

    .line 2374
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, p3, v6}, Lcom/android/server/accounts/AccountManagerService;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    goto :goto_2

    .line 2379
    :cond_4
    invoke-virtual {p0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2380
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p3

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v5, "renameAccount"

    invoke-virtual {p0, p3, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 2382
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2383
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    const-string/jumbo v5, "renameAccount"

    invoke-virtual {p0, p2, v2, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    .line 2390
    :cond_5
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 2391
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountUserDataCaches()V

    .line 2392
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2393
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return-object v3

    .line 2327
    :cond_6
    :try_start_9
    const-string p0, "AccountManagerService"

    const-string/jumbo p2, "renameAccount failed"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2335
    :try_start_a
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_1

    .line 2331
    :cond_7
    :try_start_b
    const-string p0, "AccountManagerService"

    const-string/jumbo p2, "renameAccount failed - old account does not exist"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2335
    :try_start_c
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0

    goto/16 :goto_1

    :goto_4
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2336
    throw p0

    .line 2392
    :goto_5
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw p0

    .line 2393
    :goto_6
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw p0

    .line 2308
    :goto_7
    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw p0
.end method

.method public renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 7

    .line 4810
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p3

    .line 4811
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 4812
    iget-object p3, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p3, p1}, Lcom/android/server/accounts/AccountsDb;->findSharedAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    .line 4813
    iget-object p3, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/accounts/AccountsDb;->renameSharedAccount(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_0

    .line 4815
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    move-result v6

    .line 4816
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_RENAME:Ljava/lang/String;

    const-string/jumbo v2, "shared_accounts"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 4819
    invoke-virtual {v0, v5, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    :cond_0
    if-lez p3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;
    .locals 6

    .line 707
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    :try_start_0
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    :try_start_2
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v0, 0x3e8

    .line 722
    invoke-static {v2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 723
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 726
    :cond_0
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 727
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->checkPackageSignature(Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 731
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 735
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 738
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 741
    :cond_2
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    const-string v5, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p2, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v4

    .line 745
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 746
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 749
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isPreOApplication(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_7

    if-eqz v1, :cond_4

    .line 750
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    .line 751
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->checkGetAccountsPermission(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    .line 752
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->checkReadContactsPermission(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    .line 753
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->accountTypeManagesContacts(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_7

    :cond_5
    if-eqz v4, :cond_6

    goto :goto_0

    .line 763
    :cond_6
    const-string p2, "android:accounts:key_legacy_not_visible"

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x4

    goto :goto_1

    .line 757
    :cond_7
    :goto_0
    const-string p2, "android:accounts:key_legacy_visible"

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    move v3, p0

    .line 769
    :cond_9
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 714
    :try_start_3
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 715
    throw p0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p0

    .line 717
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "resolveAccountVisibility#Package not found "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 718
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 10

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 6325
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .line 6326
    iget-object v2, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6327
    :try_start_0
    iget-object v3, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6328
    :try_start_1
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 6330
    :try_start_2
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_1

    .line 6332
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    int-to-long v8, p3

    move-object v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accounts/AccountsDb;->deleteGrantsByAccountIdAuthTokenTypeAndUid(JLjava/lang/String;J)Z

    .line 6334
    iget-object p2, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p2}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    move-object v7, p2

    .line 6337
    :goto_0
    :try_start_3
    iget-object p2, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p2}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 6341
    invoke-virtual {p0, p1, v7, p3, v1}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p2

    .line 6340
    invoke-virtual {p0, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 6344
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 6345
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6349
    iget-object p2, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    .line 6350
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v2, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1, p3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 6337
    :goto_2
    :try_start_5
    iget-object p1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 6338
    throw p0

    .line 6344
    :goto_3
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0

    .line 6345
    :goto_4
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    .line 6322
    :cond_3
    :goto_5
    const-string p0, "AccountManagerService"

    const-string/jumbo p1, "revokeAppPermission: called with invalid arguments"

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 2779
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2780
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2782
    :try_start_0
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2783
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->shouldBlockDatabaseWrite(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 2784
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2785
    :try_start_2
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2788
    :try_start_3
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    .line 2805
    :try_start_4
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2809
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2792
    :cond_1
    :try_start_5
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, v4, v5, p3}, Lcom/android/server/accounts/AccountsDb;->deleteAuthtokensByAccountIdAndType(JLjava/lang/String;)Z

    if-eqz p4, :cond_2

    if-eqz v3, :cond_2

    .line 2794
    const-string p0, "AccountManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Too much storage is used - block token update for accountType="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2805
    :try_start_6
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 2798
    :cond_2
    :try_start_7
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, v4, v5, p3, p4}, Lcom/android/server/accounts/AccountsDb;->insertAuthToken(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_3

    .line 2799
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2805
    :try_start_8
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2807
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2808
    :try_start_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/4 p0, 0x1

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return p0

    :catchall_2
    move-exception p0

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw p0

    .line 2805
    :cond_3
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    goto :goto_0

    :goto_1
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2811
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_3
    move-exception p0

    .line 2784
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw p0

    .line 2812
    :goto_2
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw p0

    :cond_4
    :goto_3
    return v0
.end method

.method public final saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p5, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 2767
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2768
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter p0

    .line 2769
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetaccountTokenCaches(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object p1

    move-object v1, p5

    move-object p5, p3

    move-object p3, p6

    move-object p6, p4

    move-object p4, v1

    invoke-virtual/range {p1 .. p8}, Lcom/android/server/accounts/TokenCache;->put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V

    .line 2771
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1119
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "the account with type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " removed while useCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " for userId="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", sending broadcast of "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p4, 0x1000000

    .line 1124
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1125
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1126
    const-string p2, "authAccount"

    iget-object p4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1127
    const-string p2, "accountType"

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1109
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "the accountType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " changed with useCase="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for userId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", sending broadcast of "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 1112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1110
    const-string v0, "AccountManagerService"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance p3, Landroid/os/UserHandle;

    invoke-direct {p3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 p1, 0x0

    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_OPTIONS:Landroid/os/Bundle;

    invoke-virtual {p0, p2, p3, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .locals 0

    .line 6672
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x2

    .line 6676
    const-string p2, "AccountManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6677
    const-string p1, "failure while notifying response"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 3

    .line 1015
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p1

    .line 1017
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1018
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1019
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 1021
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 0

    .line 6659
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x2

    .line 6663
    const-string p2, "AccountManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6664
    const-string p1, "failure while notifying response"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 9

    .line 803
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 804
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 805
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 806
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 807
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1, v6, v0}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 808
    invoke-virtual {p0, v6}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 811
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 809
    const-string/jumbo p1, "uid %s cannot get secrets for accounts of type: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 813
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 815
    :cond_1
    :goto_0
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v7

    .line 817
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 818
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    invoke-static {v7, v8}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v7, v8}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 822
    throw p0
.end method

.method public final setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;I)Z
    .locals 5

    .line 844
    iget-object v0, p5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_0
    iget-object v1, p5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz p4, :cond_2

    .line 849
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 851
    invoke-virtual {p0, p1, p5}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p6

    .line 852
    invoke-virtual {p0, p1, p5}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 854
    :cond_0
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {p0, p2, p6, v3}, Lcom/android/server/accounts/AccountManagerService;->canCallerAccessPackage(Ljava/lang/String;II)Z

    move-result p6

    if-nez p6, :cond_1

    .line 855
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v2

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    .line 857
    :cond_1
    :try_start_3
    new-instance p6, Ljava/util/HashMap;

    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    .line 859
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v3

    .line 858
    invoke-interface {p6, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 861
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->shouldNotifyPackageOnAccountRemoval(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 862
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 867
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 868
    invoke-virtual {p0, p2, p6, v3}, Lcom/android/server/accounts/AccountManagerService;->canCallerAccessPackage(Ljava/lang/String;II)Z

    move-result p6

    if-nez p6, :cond_3

    .line 870
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v2

    .line 872
    :cond_3
    :try_start_5
    sget-object p6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 873
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    .line 876
    iget-object v4, p5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 877
    invoke-virtual {v4, p1, p2}, Lcom/android/server/accounts/AccountsDb;->findAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 878
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p3, :cond_5

    move p4, v2

    .line 884
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/server/accounts/AccountManagerService;->updateAccountVisibilityLocked(Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 885
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return v2

    :cond_6
    if-eqz p4, :cond_b

    .line 889
    :try_start_7
    const-string p3, "AccountManagerService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying visibility changed for package="

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    .line 890
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 892
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    .line 894
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 895
    invoke-virtual {p0, p6}, Lcom/android/server/accounts/AccountManagerService;->isVisible(I)Z

    move-result p6

    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->isVisible(I)Z

    move-result v2

    if-eq p6, v2, :cond_7

    .line 896
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p4, p5}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    goto :goto_1

    .line 899
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 901
    invoke-virtual {p0, p1, p3, p5}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 902
    invoke-virtual {p0, p4}, Lcom/android/server/accounts/AccountManagerService;->isVisible(I)Z

    move-result p4

    if-eqz p4, :cond_9

    goto :goto_2

    .line 905
    :cond_9
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p4

    const-string/jumbo p6, "setAccountVisibility"

    invoke-virtual {p0, p1, p3, p4, p6}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 911
    :cond_a
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p2

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo p3, "setAccountVisibility"

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 914
    :cond_b
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 p0, 0x1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return p0

    .line 915
    :goto_3
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p0

    .line 916
    :goto_4
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw p0
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 2850
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x2

    .line 2851
    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAuthToken: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2855
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2852
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2858
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2859
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2860
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2867
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 2869
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2870
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2872
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2873
    throw p0

    .line 2863
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2861
    const-string/jumbo p1, "uid %s cannot set auth tokens associated with accounts of type: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2865
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBindInstantServiceAllowed(IZ)V
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {p0, p1, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->setBindInstantServiceAllowed(IZ)V

    return-void
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4

    .line 2878
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x2

    .line 2879
    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAuthToken: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2882
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2880
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2885
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2886
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2893
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 2895
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .line 2896
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2898
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2899
    throw p0

    .line 2889
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2887
    const-string/jumbo p1, "uid %s cannot set secrets for accounts of type: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2891
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 11

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 2907
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xf4240

    if-le v0, v1, :cond_1

    .line 2908
    const-string p0, "AccountManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "New password is too long for accountType="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2912
    :cond_1
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2913
    :try_start_0
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 2914
    :try_start_1
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v3, 0x0

    .line 2916
    :try_start_2
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v7

    const-wide/16 v4, 0x0

    cmp-long v0, v7, v4

    if-ltz v0, :cond_5

    .line 2918
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v7, v8, p3}, Lcom/android/server/accounts/AccountsDb;->updateCeAccountPassword(JLjava/lang/String;)I

    .line 2919
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v7, v8}, Lcom/android/server/accounts/AccountsDb;->deleteAuthTokensByAccountId(J)Z

    .line 2920
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2921
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetaccountTokenCaches(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V

    .line 2922
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v3, 0x1

    if-eqz p3, :cond_3

    .line 2928
    :try_start_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 2930
    :cond_2
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_SET_PASSWORD:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    move-object v5, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p3, v0

    move-object v4, p0

    move-object v9, p1

    move v10, p4

    goto/16 :goto_7

    .line 2929
    :cond_3
    :goto_1
    :try_start_4
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CLEAR_PASSWORD:Ljava/lang/String;

    goto :goto_0

    .line 2931
    :goto_2
    const-string v6, "accounts"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v4, p0

    move-object v9, p1

    move v10, p4

    :try_start_5
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 2934
    iget-object p0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 2938
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x5

    goto :goto_3

    :cond_4
    const/4 p1, 0x4

    :goto_3
    const/16 p3, 0x3b7

    .line 2934
    invoke-static {p3, p0, v10, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_4
    move-object p3, v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v4, p0

    move-object v9, p1

    move v10, p4

    goto :goto_4

    :cond_5
    move-object v4, p0

    move-object v9, p1

    move v10, p4

    .line 2943
    :goto_5
    :try_start_6
    iget-object p0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    if-eqz v3, :cond_6

    .line 2946
    invoke-virtual {v4, p2, v9}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2947
    const-string p0, "AccountManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "callingUid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " changed password"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    invoke-static {v9}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p0

    iget-object p1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo p2, "setPassword"

    invoke-virtual {v4, p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_8

    .line 2952
    :cond_6
    :goto_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2953
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    move-object p0, v0

    goto :goto_9

    .line 2943
    :goto_7
    :try_start_8
    iget-object p0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    if-eqz v3, :cond_7

    .line 2946
    invoke-virtual {v4, p2, v9}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2947
    const-string p0, "AccountManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "callingUid="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " changed password"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    invoke-static {v9}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p0

    iget-object p1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo p2, "setPassword"

    invoke-virtual {v4, p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 2951
    :cond_7
    throw p3

    .line 2952
    :goto_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw p0

    .line 2953
    :goto_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p0
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 2984
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v0, 0x2

    .line 2985
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserData: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", key "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2989
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2986
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    .line 2993
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2994
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1, v5, v0}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3001
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v6

    .line 3003
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .line 3004
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 3009
    invoke-static {v6, v7}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 3007
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3009
    invoke-static {v6, v7}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v6, v7}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 3010
    throw p0

    :cond_2
    move-object v2, p1

    .line 2997
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2995
    const-string/jumbo p1, "uid %s cannot set user data for accounts of type: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2999
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2992
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2991
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "key is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 3028
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3029
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_0

    .line 3030
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->shouldBlockDatabaseWrite(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3031
    const-string p0, "AccountManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too much storage is used - block user data update for accountType="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 3035
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3037
    :try_start_4
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3039
    :try_start_5
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 3054
    :try_start_6
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    :goto_0
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    .line 3043
    :cond_1
    :try_start_7
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5, v1, v2, p3}, Lcom/android/server/accounts/AccountsDb;->findExtrasIdByAccountId(JLjava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-gez v7, :cond_2

    .line 3045
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5, v1, v2, p3, p4}, Lcom/android/server/accounts/AccountsDb;->insertExtra(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 3054
    :try_start_8
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :catchall_2
    move-exception p0

    goto :goto_1

    .line 3049
    :cond_2
    :try_start_9
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, v5, v6, p4}, Lcom/android/server/accounts/AccountsDb;->updateExtra(JLjava/lang/String;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-nez v1, :cond_3

    .line 3054
    :try_start_a
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 3052
    :cond_3
    :try_start_b
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 3054
    :try_start_c
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 3056
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 3057
    :try_start_d
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 3058
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountUserDataCaches()V

    .line 3059
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 3060
    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 3061
    iget-object p0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 p1, 0x6

    const/16 p2, 0x3b7

    invoke-static {p2, p0, p5, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    return-void

    :catchall_3
    move-exception p0

    .line 3059
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw p0

    .line 3054
    :goto_1
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 3055
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 3035
    :goto_2
    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    throw p0

    .line 3060
    :goto_3
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    throw p0
.end method

.method public final shouldBlockDatabaseWrite(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 1176
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmCacheSizeForAccount(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1178
    invoke-virtual {p0, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->computeEntrySize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1179
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmCacheSizeForAccount(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x493e0

    if-ge v0, v3, :cond_0

    return v1

    .line 1184
    :cond_0
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/accounts/Account;

    if-eqz v8, :cond_1

    .line 1186
    array-length v8, v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_0

    :cond_2
    cmp-long v3, v6, v4

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v6, 0x1

    :goto_1
    int-to-long v3, v0

    const-wide/32 v8, 0x1c9c380

    .line 1190
    div-long/2addr v8, v6

    cmp-long v0, v3, v8

    if-gez v0, :cond_4

    return v1

    .line 1194
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->recomputeCacheSizeForAccountLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 1195
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmCacheSizeForAccount(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1196
    invoke-virtual {p0, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->computeEntrySize(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    .line 1197
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmCacheSizeForAccount(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long p0, v0

    cmp-long p0, p0, v8

    if-gez p0, :cond_5

    return v1

    .line 1201
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Account of type="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uses too much storage: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final shouldNotifyPackageOnAccountRemoval(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z
    .locals 3

    .line 1085
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    .line 1091
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    .line 1092
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1093
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p2

    .line 1095
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1096
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public final showCantAddAccount(II)V
    .locals 3

    .line 3999
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 4000
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_0

    .line 4003
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDefaultCantAddAccountIntent(I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 4005
    const-string/jumbo v1, "no_modify_accounts"

    invoke-virtual {v0, p2, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->createUserRestrictionSupportIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_2

    const/4 v1, 0x0

    .line 4008
    invoke-virtual {v0, p2, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 4011
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDefaultCantAddAccountIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 4013
    :cond_3
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 4015
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4017
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 4018
    throw p0
.end method

.method public someUserHasAccount(Landroid/accounts/Account;)Z
    .locals 5

    const/16 v0, 0x3e8

    .line 4455
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4458
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4460
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getAllAccountsForSystemProcess()[Landroid/accounts/AccountAndUser;

    move-result-object p0

    .line 4461
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    .line 4462
    aget-object v4, p0, v2

    iget-object v4, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 4468
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4469
    throw p0

    .line 4456
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system can check for accounts across users"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v0, p6

    const/4 v2, 0x1

    .line 3673
    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    const/4 v5, 0x2

    .line 3674
    const-string v6, "AccountManagerService"

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3675
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAddAccountSession: accountType "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", response "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", authTokenType "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p3

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", requiredFeatures "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3679
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", expectActivityLaunch "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", caller\'s uid "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3681
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", pid "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3682
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3675
    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v10, p3

    move/from16 v7, p5

    :goto_0
    const/4 v5, 0x0

    if-eqz v3, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v5

    .line 3684
    :goto_1
    const-string/jumbo v8, "response cannot be null"

    invoke-static {v6, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v5

    .line 3685
    :goto_2
    const-string v5, "accountType cannot be null"

    invoke-static {v2, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3687
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3688
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 3689
    invoke-virtual {v1, v5, v2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v6

    if-nez v6, :cond_3

    const/16 v0, 0x64

    .line 3691
    :try_start_0
    const-string v2, "User is not allowed to add an account!"

    invoke-interface {v3, v0, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3695
    :catch_0
    invoke-virtual {v1, v0, v5}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 3698
    :cond_3
    invoke-virtual {v1, v5, v4, v2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_4

    const/16 v0, 0x65

    .line 3700
    :try_start_1
    const-string v2, "User cannot modify accounts of this type (policy)."

    invoke-interface {v3, v0, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3704
    :catch_1
    invoke-virtual {v1, v0, v5}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 3708
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    if-nez v0, :cond_5

    .line 3709
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_5
    move-object v12, v0

    .line 3710
    const-string v0, "callerUid"

    invoke-virtual {v12, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3711
    const-string v0, "callerPid"

    invoke-virtual {v12, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3714
    const-string v0, "androidPackageName"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3715
    const-string v0, "android.permission.GET_PASSWORD"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v13, v2, v0}, Lcom/android/server/accounts/AccountManagerService;->checkPermissionAndNote(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v9

    .line 3718
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v15

    .line 3720
    :try_start_2
    invoke-virtual {v1, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 3721
    sget-object v5, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_START_ACCOUNT_ADD:Ljava/lang/String;

    const-string v6, "accounts"

    invoke-virtual {v1, v0, v5, v6, v2}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v0

    .line 3723
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$9;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    move-object/from16 v14, p2

    move-object/from16 v11, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v14}, Lcom/android/server/accounts/AccountManagerService$9;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 3746
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3748
    invoke-static/range {v15 .. v16}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 3749
    throw v0
.end method

.method public final startChooseAccountActivityWithAccounts(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3

    .line 4908
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/ChooseAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4909
    const-string v1, "accounts"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4910
    new-instance p2, Landroid/accounts/AccountManagerResponse;

    invoke-direct {p2, p1}, Landroid/accounts/AccountManagerResponse;-><init>(Landroid/accounts/IAccountManagerResponse;)V

    const-string p1, "accountManagerResponse"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4912
    const-string p1, "androidPackageName"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4914
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 15

    move-object/from16 v3, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p5

    const/4 v0, 0x1

    .line 4125
    invoke-static {v12, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    const/4 v0, 0x2

    .line 4126
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startUpdateCredentialsSession: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", authTokenType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expectActivityLaunch "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4130
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4131
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4127
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v11, p3

    move/from16 v5, p4

    :goto_0
    if-eqz v3, :cond_2

    if-eqz v10, :cond_1

    .line 4140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4141
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4144
    const-string v2, "androidPackageName"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4145
    const-string v4, "android.permission.GET_PASSWORD"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v0, v4}, Lcom/android/server/accounts/AccountManagerService;->checkPermissionAndNote(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v9

    .line 4148
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v13

    .line 4150
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 4151
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$13;

    iget-object v4, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/server/accounts/AccountManagerService$13;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4176
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4178
    invoke-static {v13, v14}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v13, v14}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 4179
    throw p0

    .line 4137
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "account is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4134
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "response is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 3

    .line 1497
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "mUsers lock must be held"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1498
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->findCeAccountsNotInDe()Ljava/util/List;

    move-result-object v0

    .line 1499
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " accounts were previously deleted while user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was locked. Removing accounts from CE tables"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_SYNC_DE_CE_ACCOUNTS:Ljava/lang/String;

    const-string v2, "accounts"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    const/16 v2, 0x3e8

    .line 1507
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final syncSharedAccounts(I)V
    .locals 8

    .line 1613
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1614
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 1615
    :cond_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1617
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v0, v5

    .line 1618
    invoke-static {v1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 1620
    :cond_1
    invoke-virtual {p0, v2, v6, v4, p1}, Lcom/android/server/accounts/AccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 979
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 980
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 981
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 982
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 984
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 985
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 988
    throw p0
.end method

.method public final unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 6

    .line 993
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmReceiversForType(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 996
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 998
    :cond_0
    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 999
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmReceiversForType(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 1000
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1003
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1004
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1005
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1007
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1001
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attempt to unregister wrong receiver"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1010
    :cond_3
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final updateAccountVisibilityLocked(Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Z
    .locals 5

    .line 922
    iget-object v0, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return v3

    .line 927
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 929
    :try_start_0
    iget-object v4, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v0, v1, p2, p3}, Lcom/android/server/accounts/AccountsDb;->setAccountVisibility(JLjava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 934
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v3

    :cond_1
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 937
    invoke-virtual {p0, p1, p4}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    .line 938
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 934
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 935
    throw p0
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .locals 2

    .line 6264
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    move-result v0

    .line 6266
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_0

    .line 6271
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    return-void

    .line 6273
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    return-void

    .line 6267
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 15

    move-object/from16 v3, p1

    move-object/from16 v10, p2

    const/4 v0, 0x1

    move-object/from16 v12, p5

    .line 4082
    invoke-static {v12, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    const/4 v0, 0x2

    .line 4083
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCredentials: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", authTokenType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expectActivityLaunch "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4088
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4089
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4084
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v11, p3

    move/from16 v5, p4

    :goto_0
    if-eqz v3, :cond_2

    if-eqz v10, :cond_1

    .line 4093
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4094
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v13

    .line 4096
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 4097
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$12;

    iget-object v4, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/server/accounts/AccountManagerService$12;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4112
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4114
    invoke-static {v13, v14}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v13, v14}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 4115
    throw p0

    .line 4092
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "account is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4091
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "response is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    .locals 2

    .line 1909
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p0

    .line 1910
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1911
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1912
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountsDb;->updateAccountLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 1913
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 1914
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public validateAccounts(I)V
    .locals 1

    .line 1158
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p1

    const/4 v0, 0x1

    .line 1161
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    return-void
.end method

.method public final validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 1229
    const-string v0, "AccountManagerService"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validateAccountsInternal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isCeDatabaseAttached="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 1231
    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->isCeDatabaseAttached()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " userLocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    .line 1232
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1230
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    .line 1236
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->invalidateCache(I)V

    .line 1239
    :cond_1
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    move-result-object v0

    .line 1241
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v7

    .line 1243
    iget-object v8, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1244
    :try_start_0
    iget-object v9, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1248
    :try_start_1
    iget-object v10, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 1249
    invoke-virtual {v10}, Lcom/android/server/accounts/AccountsDb;->findMetaAuthUid()Ljava/util/Map;

    move-result-object v2

    .line 1251
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v11

    .line 1253
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1254
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1255
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1256
    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    if-eqz v13, :cond_3

    .line 1257
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v5, v14, :cond_3

    .line 1259
    invoke-virtual {v0, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_3
    if-nez v4, :cond_4

    .line 1278
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/accounts/AccountManagerService;->getUidsOfInstalledOrUpdatedPackagesAsUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 1280
    :cond_4
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v14

    if-nez v14, :cond_5

    .line 1284
    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1286
    invoke-virtual {v10, v12, v5}, Lcom/android/server/accounts/AccountsDb;->deleteMetaByAuthTypeAndUid(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    if-eqz v13, :cond_2

    .line 1287
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v13, v5, :cond_2

    .line 1288
    const-string v13, "AccountManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "authenticator no longer exist for type "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1290
    invoke-virtual {v10, v12, v5}, Lcom/android/server/accounts/AccountsDb;->deleteMetaByAuthTypeAndUid(Ljava/lang/String;I)Z

    goto :goto_0

    .line 1298
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v12, 0x1

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1299
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1300
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1301
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1305
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v13, 0x3b7

    .line 1302
    invoke-static {v13, v4, v5, v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    .line 1309
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v10, v4, v3}, Lcom/android/server/accounts/AccountsDb;->insertOrReplaceMetaAuthTypeAndUid(Ljava/lang/String;I)J

    goto :goto_1

    .line 1312
    :cond_8
    invoke-virtual {v10}, Lcom/android/server/accounts/AccountsDb;->findAllDeAccounts()Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1314
    :try_start_2
    iget-object v2, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1315
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1317
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const/4 v2, 0x0

    :goto_2
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1318
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1319
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/accounts/Account;

    .line 1320
    iget-object v3, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1321
    const-string v3, "AccountManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "deleting account "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " because type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\'s registered authenticator no longer exist."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    invoke-virtual {v1, v15, v6}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v12

    .line 1327
    invoke-virtual {v1, v15, v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v13

    .line 1328
    invoke-virtual {v10}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1330
    :try_start_4
    invoke-virtual {v10, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteDeAccount(J)Z

    if-eqz v7, :cond_9

    .line 1335
    invoke-virtual {v10, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteCeAccount(J)Z

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    .line 1337
    :cond_9
    :goto_3
    invoke-virtual {v10}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1339
    :try_start_5
    invoke-virtual {v10}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1342
    :try_start_6
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string/jumbo v0, "validateAccountsInternal#Deleted UserId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", AccountId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    sget-object v2, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String;

    const-string v3, "accounts"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1348
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetaccountTokenCaches(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V

    .line 1351
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmCacheSizeForAccount(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1356
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/accounts/AccountManagerService;->isVisible(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1357
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    goto :goto_4

    :catchall_2
    move-exception v0

    const/4 v12, 0x1

    goto/16 :goto_a

    .line 1360
    :cond_b
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1361
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    const-string/jumbo v4, "validateAccounts"

    invoke-virtual {v1, v15, v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :cond_c
    const/4 v2, 0x1

    goto :goto_7

    :catchall_3
    move-exception v0

    move v12, v2

    goto/16 :goto_a

    .line 1339
    :goto_6
    :try_start_7
    invoke-virtual {v10}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 1340
    throw v0

    :cond_d
    move-object/from16 v16, v0

    .line 1368
    iget-object v0, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 1370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1371
    iget-object v3, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v14, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    :cond_e
    iget-object v3, v15, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    move-object/from16 v0, v16

    const/4 v12, 0x1

    goto/16 :goto_2

    .line 1376
    :cond_f
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1377
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1378
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1379
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v7, v5, [Landroid/accounts/Account;

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v5, :cond_10

    .line 1381
    new-instance v12, Landroid/accounts/Account;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1382
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v4, v14}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v12, v7, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 1384
    :cond_10
    iget-object v3, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 1386
    :cond_11
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v10}, Lcom/android/server/accounts/AccountsDb;->findAllVisibilityValues()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1387
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v2, :cond_12

    .line 1390
    :try_start_8
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    const-string v2, "ambiguous"

    const-string/jumbo v3, "validateAccounts"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 1396
    :cond_12
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1397
    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    goto :goto_c

    :catchall_5
    move-exception v0

    const/4 v12, 0x0

    :goto_a
    if-eqz v12, :cond_13

    .line 1390
    :try_start_a
    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    const-string v3, "ambiguous"

    const-string/jumbo v4, "validateAccounts"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 1395
    :cond_13
    throw v0

    .line 1396
    :goto_b
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v0

    .line 1397
    :goto_c
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0
.end method

.method public writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6584
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 6587
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p2}, Lcom/android/server/accounts/AccountsDb;->findAuthTokensByAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v0

    .line 6588
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez p4, :cond_1

    .line 6592
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6594
    :cond_1
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v1, :cond_2

    .line 6597
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->recomputeCacheSizeForAccountLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    :cond_2
    return-void
.end method

.method public writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6552
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 6555
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p2}, Lcom/android/server/accounts/AccountsDb;->findUserExtrasForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v0

    .line 6556
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez p4, :cond_1

    .line 6560
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6562
    :cond_1
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v1, :cond_2

    .line 6565
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->recomputeCacheSizeForAccountLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    :cond_2
    return-void
.end method
