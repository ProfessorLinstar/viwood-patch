.class public Lcom/android/server/broadcastradio/hal2/RadioModule$2;
.super Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener$Stub;
.source "RadioModule.java"


# instance fields
.field public final synthetic val$listener:Landroid/hardware/radio/IAnnouncementListener;


# direct methods
.method public static synthetic $r8$lambda$woTpjYEETpgvCD0ZnRH3XwfmX38(Landroid/hardware/broadcastradio/V2_0/Announcement;)Landroid/hardware/radio/Announcement;
    .locals 0

    .line 421
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->announcementFromHal(Landroid/hardware/broadcastradio/V2_0/Announcement;)Landroid/hardware/radio/Announcement;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/IAnnouncementListener;)V
    .locals 0

    .line 417
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$2;->val$listener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-direct {p0}, Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onListUpdated(Ljava/util/ArrayList;)V
    .locals 1

    .line 420
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$2;->val$listener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/broadcastradio/hal2/RadioModule$2$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule$2$$ExternalSyntheticLambda0;-><init>()V

    .line 421
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 420
    invoke-interface {p0, p1}, Landroid/hardware/radio/IAnnouncementListener;->onListUpdated(Ljava/util/List;)V

    return-void
.end method
