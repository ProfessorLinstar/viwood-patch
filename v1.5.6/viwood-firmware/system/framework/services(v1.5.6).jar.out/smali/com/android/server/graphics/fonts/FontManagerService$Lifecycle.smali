.class public final Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "FontManagerService.java"


# instance fields
.field public final mService:Lcom/android/server/graphics/fonts/FontManagerService;

.field public final mServiceStarted:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;)Lcom/android/server/graphics/fonts/FontManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceStarted(Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->mServiceStarted:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 142
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->mServiceStarted:Ljava/util/concurrent/CompletableFuture;

    .line 146
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/android/server/graphics/fonts/FontManagerService;-><init>(Landroid/content/Context;ZLjava/util/concurrent/CompletableFuture;Lcom/android/server/graphics/fonts/FontManagerService-IA;)V

    iput-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_0

    .line 175
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->mServiceStarted:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 151
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle$1;

    invoke-direct {v0, p0}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle$1;-><init>(Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;)V

    const-class v1, Lcom/android/server/graphics/fonts/FontManagerInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 163
    const-string v0, "font"

    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
