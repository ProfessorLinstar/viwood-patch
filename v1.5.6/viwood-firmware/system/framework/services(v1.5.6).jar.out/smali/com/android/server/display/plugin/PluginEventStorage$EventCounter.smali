.class public Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;
.super Ljava/lang/Object;
.source "PluginEventStorage.java"


# instance fields
.field public mEventCounter:I

.field public mFastEventCounter:I


# direct methods
.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mincrease(Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;JJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->increase(JJ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mEventCounter:I

    .line 120
    iput v0, p0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mFastEventCounter:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/plugin/PluginEventStorage-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;-><init>()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 130
    const-string v0, "Count:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget v0, p0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mEventCounter:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "; Fast:"

    .line 131
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget p0, p0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mFastEventCounter:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void
.end method

.method public final increase(JJ)V
    .locals 1

    .line 123
    iget v0, p0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mEventCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mEventCounter:I

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x1f4

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    .line 125
    iget p1, p0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mFastEventCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mFastEventCounter:I

    :cond_0
    return-void
.end method
