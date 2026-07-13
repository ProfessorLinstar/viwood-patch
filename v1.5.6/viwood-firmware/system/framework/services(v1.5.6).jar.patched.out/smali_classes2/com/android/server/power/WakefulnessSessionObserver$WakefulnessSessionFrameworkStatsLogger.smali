.class public Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;
.super Ljava/lang/Object;
.source "WakefulnessSessionObserver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertToLogUserActivityEvent(I)I
    .locals 0

    .line 0
    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public logDimEvent(IIIIII)V
    .locals 0

    .line 769
    invoke-virtual {p0, p3}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->convertToLogUserActivityEvent(I)I

    move-result p3

    const/16 p0, 0x363

    .line 770
    invoke-static/range {p0 .. p6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIII)V

    return-void
.end method

.method public logSessionEvent(IIJIJI)V
    .locals 10

    .line 738
    invoke-virtual {p0, p5}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->convertToLogUserActivityEvent(I)I

    move-result v5

    const/16 v0, 0x345

    move/from16 p0, p8

    int-to-long v8, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v6, p6

    .line 739
    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIJJ)V

    return-void
.end method

.method public logTimeoutOverrideEvent(IIII)V
    .locals 7

    int-to-long v3, p3

    int-to-long v5, p4

    const/16 v0, 0x344

    move v1, p1

    move v2, p2

    .line 754
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJJ)V

    return-void
.end method
