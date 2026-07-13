.class public Lcom/android/server/media/MediaResourceMonitorService;
.super Lcom/android/server/SystemService;
.source "MediaResourceMonitorService.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-string v0, "MediaResourceMonitor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance p1, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    invoke-direct {p1, p0}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;-><init>(Lcom/android/server/media/MediaResourceMonitorService;)V

    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService;->mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 49
    const-string/jumbo v0, "media_resource_monitor"

    iget-object v1, p0, Lcom/android/server/media/MediaResourceMonitorService;->mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
