.class public final Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# instance fields
.field public final attributionSource:Landroid/content/AttributionSource;

.field public final eventSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/AttributionSource;Ljava/lang/String;)V
    .locals 0

    .line 1710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1711
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;->attributionSource:Landroid/content/AttributionSource;

    .line 1712
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;->eventSource:Ljava/lang/String;

    return-void
.end method
