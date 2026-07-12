.class public final Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;
.super Landroid/hardware/radio/IAnnouncementListener$Stub;
.source "AnnouncementAggregator.java"


# instance fields
.field public mCloseHandle:Landroid/hardware/radio/ICloseHandle;

.field public mCurrentList:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;

    invoke-direct {p0}, Landroid/hardware/radio/IAnnouncementListener$Stub;-><init>()V

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCurrentList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;-><init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 91
    invoke-static {}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "BcRadioAidlSrv.AnnAggr"

    const-string v1, "Close module watcher."

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCloseHandle:Landroid/hardware/radio/ICloseHandle;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/hardware/radio/ICloseHandle;->close()V

    :cond_1
    return-void
.end method

.method public dumpInfo(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    const/4 v0, 0x0

    .line 98
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ModuleWatcher:\n"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 100
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 101
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCloseHandle:Landroid/hardware/radio/ICloseHandle;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Close handle: %s\n"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 102
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCurrentList:Ljava/util/List;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Current announcement list: %s\n"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 103
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public onListUpdated(Ljava/util/List;)V
    .locals 3

    .line 76
    invoke-static {}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v0, "onListUpdate for %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "BcRadioAidlSrv.AnnAggr"

    invoke-static {v2, v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCurrentList:Ljava/util/List;

    .line 80
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;

    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->-$$Nest$monListUpdated(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;)V

    return-void
.end method

.method public setCloseHandle(Landroid/hardware/radio/ICloseHandle;)V
    .locals 3

    .line 84
    invoke-static {}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "Set close handle %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "BcRadioAidlSrv.AnnAggr"

    invoke-static {v2, v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCloseHandle:Landroid/hardware/radio/ICloseHandle;

    return-void
.end method
