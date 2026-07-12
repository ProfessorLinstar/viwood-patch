.class public Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$DeathRecipient;
.super Ljava/lang/Object;
.source "AnnouncementAggregator.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$DeathRecipient;->this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$DeathRecipient;-><init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 110
    :try_start_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$DeathRecipient;->this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;

    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 112
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BcRadioAidlSrv.AnnAggr"

    const-string v2, "Cannot close Announcement aggregator for DeathRecipient"

    invoke-static {v1, p0, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
