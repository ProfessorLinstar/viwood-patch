.class Lcom/android/server/blob/BlobStoreManagerService$Injector;
.super Ljava/lang/Object;
.source "BlobStoreManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundHandler()Landroid/os/Handler;
    .locals 0

    .line 1963
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public initializeMessageHandler()Landroid/os/Handler;
    .locals 0

    .line 1959
    invoke-static {}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$sminitializeMessageHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
