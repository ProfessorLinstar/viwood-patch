.class public Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "GnssMetrics.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssMetrics;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 1

    const/16 v0, 0x275a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2775

    if-ne p1, v0, :cond_0

    .line 616
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-static {p0, p1, p2}, Lcom/android/server/location/gnss/GnssMetrics;->-$$Nest$mpullGnssPowerStats(Lcom/android/server/location/gnss/GnssMetrics;ILjava/util/List;)I

    move-result p0

    return p0

    .line 618
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown tagId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 614
    :cond_1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-static {p0, p1, p2}, Lcom/android/server/location/gnss/GnssMetrics;->-$$Nest$mpullGnssStats(Lcom/android/server/location/gnss/GnssMetrics;ILjava/util/List;)I

    move-result p0

    return p0
.end method
