.class public abstract Lcom/android/server/media/AudioRoutingUtils;
.super Ljava/lang/Object;
.source "AudioRoutingUtils.java"


# static fields
.field public static final ATTRIBUTES_MEDIA:Landroid/media/AudioAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/AudioRoutingUtils;->ATTRIBUTES_MEDIA:Landroid/media/AudioAttributes;

    return-void
.end method

.method public static getMediaAudioProductStrategy()Landroid/media/audiopolicy/AudioProductStrategy;
    .locals 3

    .line 35
    invoke-static {}, Landroid/media/AudioManager;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 36
    sget-object v2, Lcom/android/server/media/AudioRoutingUtils;->ATTRIBUTES_MEDIA:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Landroid/media/audiopolicy/AudioProductStrategy;->supportsAudioAttributes(Landroid/media/AudioAttributes;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
