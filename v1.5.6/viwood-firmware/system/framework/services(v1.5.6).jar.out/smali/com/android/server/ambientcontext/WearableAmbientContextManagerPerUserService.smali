.class public Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;
.super Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
.source "WearableAmbientContextManagerPerUserService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WearableAmbientContextManagerPerUserService"


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field mRemoteService:Lcom/android/server/ambientcontext/RemoteWearableSensingService;

.field public final mServiceName:Ljava/lang/String;

.field public final mServiceType:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/Object;ILcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/Object;I)V

    .line 50
    iput-object p4, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mServiceType:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 51
    iput-object p5, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mServiceName:Ljava/lang/String;

    .line 52
    invoke-static {p5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 53
    sget-object p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Created WearableAmbientContextManagerPerUserServiceand service type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and service name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearRemoteService()V
    .locals 1

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteWearableSensingService;

    return-void
.end method

.method public ensureRemoteServiceInitiated()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteWearableSensingService;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/server/ambientcontext/RemoteWearableSensingService;

    .line 62
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ambientcontext/RemoteWearableSensingService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iput-object v0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteWearableSensingService;

    :cond_0
    return-void
.end method

.method public getAmbientContextEventArrayExtraKeyConfig()I
    .locals 0

    .line 0
    const p0, 0x10402f7

    return p0
.end method

.method public getAmbientContextPackageNameExtraKeyConfig()I
    .locals 0

    .line 0
    const p0, 0x10402f8

    return p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getConsentComponentConfig()I
    .locals 0

    .line 0
    const p0, 0x104025e

    return p0
.end method

.method public getProtectedBindPermission()Ljava/lang/String;
    .locals 0

    .line 85
    const-string p0, "android.permission.BIND_WEARABLE_SENSING_SERVICE"

    return-object p0
.end method

.method public getRemoteService()Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteWearableSensingService;

    return-object p0
.end method

.method public getServiceType()Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mServiceType:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    return-object p0
.end method

.method public bridge synthetic onQueryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onQueryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public bridge synthetic onRegisterObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onRegisterObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    return-void
.end method

.method public bridge synthetic onStartConsentActivity([ILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onStartConsentActivity([ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onUnregisterObserver(Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onUnregisterObserver(Ljava/lang/String;)V

    return-void
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method
