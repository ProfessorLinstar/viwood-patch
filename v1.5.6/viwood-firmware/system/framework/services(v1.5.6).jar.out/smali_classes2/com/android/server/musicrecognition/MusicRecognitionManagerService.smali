.class public Lcom/android/server/musicrecognition/MusicRecognitionManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "MusicRecognitionManagerService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MusicRecognitionManagerService"


# instance fields
.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public mMusicRecognitionManagerStub:Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;


# direct methods
.method public static bridge synthetic -$$Nest$menforceCaller(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->enforceCaller(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 70
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x1040248

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;)Ljava/lang/Object;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object p0
.end method


# virtual methods
.method public final enforceCaller(Ljava/lang/String;)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 90
    const-string v0, "android.permission.MANAGE_MUSIC_RECOGNITION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 95
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t hold "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enforceCallingPermissionForManagement()V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.MANAGE_MUSIC_RECOGNITION"

    sget-object v1, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getMaximumTemporaryServiceDurationMs()I
    .locals 0

    .line 0
    const p0, 0xea60

    return p0
.end method

.method public bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->newServiceLocked(IZ)Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    move-result-object p0

    return-object p0
.end method

.method public newServiceLocked(IZ)Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;
    .locals 1

    .line 79
    new-instance p2, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;-><init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;Ljava/lang/Object;I)V

    return-object p2
.end method

.method public onStart()V
    .locals 2

    .line 84
    new-instance v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;

    invoke-direct {v0, p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;-><init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;)V

    iput-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->mMusicRecognitionManagerStub:Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;

    .line 85
    const-string/jumbo v1, "music_recognition"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
