.class public Lcom/android/server/camera/CameraServiceProxy$2$CSPShellCmd;
.super Landroid/os/ShellCommand;
.source "CameraServiceProxy.java"


# instance fields
.field public final mCameraServiceProxy:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .locals 0

    .line 929
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 930
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$2$CSPShellCmd;->mCameraServiceProxy:Lcom/android/server/camera/CameraServiceProxy;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4

    if-nez p1, :cond_0

    .line 936
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 938
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    .line 940
    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, -0x48fab63c

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "dump_events"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 942
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$2$CSPShellCmd;->mCameraServiceProxy:Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {p1}, Lcom/android/server/camera/CameraServiceProxy;->getUsageEventCount()I

    move-result p1

    .line 943
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2$CSPShellCmd;->mCameraServiceProxy:Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->dumpCameraEvents()V

    .line 944
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera usage events dumped: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 947
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 950
    const-string p1, "CameraService_proxy"

    const-string v0, "Error running shell command"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onHelp()V
    .locals 1

    .line 958
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "usage: cmd media.camera.proxy SUBCMD [args]\n\nSUBCMDs:\n    dump_events: Write out all collected camera usage events to statsd.\n        Does not print to terminal.\n    help: You\'re reading it.\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
