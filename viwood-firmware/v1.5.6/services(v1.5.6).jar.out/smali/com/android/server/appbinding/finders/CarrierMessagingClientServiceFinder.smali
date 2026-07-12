.class public Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;
.super Lcom/android/server/appbinding/finders/AppServiceFinder;
.source "CarrierMessagingClientServiceFinder.java"


# instance fields
.field public final mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

.field public final mRoleManager:Landroid/app/role/RoleManager;


# direct methods
.method public static synthetic $r8$lambda$ddDD0hG5zSTGAVBKIlMbkK0OLkM(Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->lambda$new$0(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;Landroid/os/Handler;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appbinding/finders/AppServiceFinder;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;Landroid/os/Handler;)V

    .line 121
    new-instance p2, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;)V

    iput-object p2, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    .line 53
    const-class p2, Landroid/app/role/RoleManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleManager:Landroid/app/role/RoleManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingClientService;

    move-result-object p0

    return-object p0
.end method

.method public asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingClientService;
    .locals 0

    .line 74
    invoke-static {p1}, Landroid/service/carrier/ICarrierMessagingClientService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingClientService;

    move-result-object p0

    return-object p0
.end method

.method public getAppDescription()Ljava/lang/String;
    .locals 0

    .line 64
    const-string p0, "[Default SMS app]"

    return-object p0
.end method

.method public getBindFlags(Lcom/android/server/appbinding/AppBindingConstants;)I
    .locals 0

    .line 118
    iget p0, p1, Lcom/android/server/appbinding/AppBindingConstants;->SMS_APP_BIND_FLAGS:I

    return p0
.end method

.method public getServiceAction()Ljava/lang/String;
    .locals 0

    .line 79
    const-string p0, "android.telephony.action.CARRIER_MESSAGING_CLIENT_SERVICE"

    return-object p0
.end method

.method public getServiceClass()Ljava/lang/Class;
    .locals 0

    .line 69
    const-class p0, Landroid/service/carrier/CarrierMessagingClientService;

    return-object p0
.end method

.method public getServicePermission()Ljava/lang/String;
    .locals 0

    .line 84
    const-string p0, "android.permission.BIND_CARRIER_MESSAGING_CLIENT_SERVICE"

    return-object p0
.end method

.method public getTargetPackage(I)Ljava/lang/String;
    .locals 1

    .line 89
    iget-object p0, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleManager:Landroid/app/role/RoleManager;

    const-string v0, "android.app.role.SMS"

    .line 90
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 89
    invoke-virtual {p0, v0, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isEnabled(Lcom/android/server/appbinding/AppBindingConstants;)Z
    .locals 0

    .line 58
    iget-boolean p1, p1, Lcom/android/server/appbinding/AppBindingConstants;->SMS_SERVICE_ENABLED:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1110292

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$0(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 122
    const-string v0, "android.app.role.SMS"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mListener:Ljava/util/function/BiConsumer;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public startMonitoring()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleManager:Landroid/app/role/RoleManager;

    .line 102
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 101
    invoke-virtual {v0, v1, p0, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    return-void
.end method

.method public validateService(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 108
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 110
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 111
    :cond_1
    :goto_0
    const-string p0, "Service must not run on the main process"

    return-object p0
.end method
