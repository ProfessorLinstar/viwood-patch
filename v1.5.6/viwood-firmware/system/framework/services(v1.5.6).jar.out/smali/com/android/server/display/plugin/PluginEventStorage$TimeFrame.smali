.class public Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;
.super Ljava/lang/Object;
.source "PluginEventStorage.java"


# instance fields
.field public final mCounters:Ljava/util/Map;

.field public final mEnd:J

.field public final mStart:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v3, 0x0

    .line 89
    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;-><init>(JJLjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(JJLjava/util/Map;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-wide p1, p0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->mStart:J

    .line 94
    iput-wide p3, p0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->mEnd:J

    .line 95
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->mCounters:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(JJLjava/util/Map;Lcom/android/server/display/plugin/PluginEventStorage-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;-><init>(JJLjava/util/Map;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/plugin/PluginEventStorage-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 100
    const-string v0, "TimeFrame:["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-static {}, Lcom/android/server/display/plugin/PluginEventStorage;->-$$Nest$sfgetsDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->mStart:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 101
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, " - "

    .line 102
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-static {}, Lcom/android/server/display/plugin/PluginEventStorage;->-$$Nest$sfgetsDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->mEnd:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 103
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "]:"

    .line 104
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->mCounters:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    const-string p0, "NO EVENTS"

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->mCounters:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/plugin/PluginType;

    iget-object v1, v1, Lcom/android/server/display/plugin/PluginType;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, " -> {"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 111
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;

    invoke-static {p1, v0}, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->-$$Nest$mdump(Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;Ljava/io/PrintWriter;)V

    .line 112
    const-string/jumbo p1, "}"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
