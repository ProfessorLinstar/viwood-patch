.class public Lcom/android/server/display/plugin/PluginEventStorage;
.super Ljava/lang/Object;
.source "PluginEventStorage.java"


# static fields
.field public static final sDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field public final mCounters:Ljava/util/Map;

.field public final mEventTimes:Ljava/util/Map;

.field public mEvents:Lcom/android/internal/util/RingBuffer;

.field public mTimeFrameStart:J


# direct methods
.method public static synthetic $r8$lambda$g-ur3r5bXUmhjeSEVRG2XcfrL-0()Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;
    .locals 2

    .line 0
    new-instance v0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;-><init>(Lcom/android/server/display/plugin/PluginEventStorage-IA;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$q0WELSZlIUwnm3Ijsgi3PBSm79k(I)[Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;
    .locals 0

    .line 42
    new-array p0, p0, [Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetsDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/display/plugin/PluginEventStorage;->sDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/server/display/plugin/PluginEventStorage;->sDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    new-instance v1, Lcom/android/server/display/plugin/PluginEventStorage$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/plugin/PluginEventStorage$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/android/server/display/plugin/PluginEventStorage$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/display/plugin/PluginEventStorage$$ExternalSyntheticLambda1;-><init>()V

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/util/function/Supplier;Ljava/util/function/IntFunction;I)V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mEventTimes:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mTimeFrameStart:J

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final closeCurrentTimeFrame()V
    .locals 8

    .line 58
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mEvents:Lcom/android/internal/util/RingBuffer;

    new-instance v1, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;

    iget-wide v2, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mTimeFrameStart:J

    const-wide/32 v4, 0xea60

    add-long/2addr v4, v2

    iget-object v6, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;-><init>(JJLjava/util/Map;Lcom/android/server/display/plugin/PluginEventStorage-IA;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 61
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public getTimeFrames()Ljava/util/List;
    .locals 9

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    new-instance v2, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;

    iget-wide v3, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mTimeFrameStart:J

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;-><init>(JJLjava/util/Map;Lcom/android/server/display/plugin/PluginEventStorage-IA;)V

    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onValueUpdated(Lcom/android/server/display/plugin/PluginType;)V
    .locals 6

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    sub-long v2, v0, v2

    .line 50
    iget-wide v4, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mTimeFrameStart:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/server/display/plugin/PluginEventStorage;->closeCurrentTimeFrame()V

    .line 52
    iput-wide v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mTimeFrameStart:J

    .line 54
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/plugin/PluginEventStorage;->updateCurrentTimeFrame(Lcom/android/server/display/plugin/PluginType;J)V

    return-void
.end method

.method public final updateCurrentTimeFrame(Lcom/android/server/display/plugin/PluginType;J)V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;

    .line 67
    iget-object v1, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mEventTimes:Ljava/util/Map;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;-><init>(Lcom/android/server/display/plugin/PluginEventStorage-IA;)V

    .line 70
    iget-object v3, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    invoke-static {v0, p2, p3, v1, v2}, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->-$$Nest$mincrease(Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;JJ)V

    .line 73
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mEventTimes:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
