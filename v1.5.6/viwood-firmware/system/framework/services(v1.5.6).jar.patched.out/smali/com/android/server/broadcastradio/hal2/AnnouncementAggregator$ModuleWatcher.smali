.class public Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
.super Landroid/hardware/radio/IAnnouncementListener$Stub;
.source "AnnouncementAggregator.java"


# instance fields
.field public currentList:Ljava/util/List;

.field public mCloseHandle:Landroid/hardware/radio/ICloseHandle;

.field public final synthetic this$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->this$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    invoke-direct {p0}, Landroid/hardware/radio/IAnnouncementListener$Stub;-><init>()V

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->currentList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;-><init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->mCloseHandle:Landroid/hardware/radio/ICloseHandle;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/hardware/radio/ICloseHandle;->close()V

    :cond_0
    return-void
.end method

.method public onListUpdated(Ljava/util/List;)V
    .locals 0

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->currentList:Ljava/util/List;

    .line 64
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->this$0:Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->-$$Nest$monListUpdated(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V

    return-void
.end method

.method public setCloseHandle(Landroid/hardware/radio/ICloseHandle;)V
    .locals 0

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->mCloseHandle:Landroid/hardware/radio/ICloseHandle;

    return-void
.end method
