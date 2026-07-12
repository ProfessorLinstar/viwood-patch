.class public Lcom/android/server/pm/DataLoaderManagerService;
.super Lcom/android/server/SystemService;
.source "DataLoaderManagerService.java"


# instance fields
.field public final mBinderService:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mServiceConnections:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceConnections(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    .line 57
    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService;->mContext:Landroid/content/Context;

    .line 59
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "DataLoaderManager"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance p1, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

    invoke-direct {p1, p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;-><init>(Lcom/android/server/pm/DataLoaderManagerService;)V

    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService;->mBinderService:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 69
    const-string v0, "dataloader_manager"

    iget-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService;->mBinderService:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
