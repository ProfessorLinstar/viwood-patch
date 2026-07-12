.class public Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;
.super Ljava/lang/Object;
.source "FlexibilityController.java"


# instance fields
.field public score:I

.field public startTimeElapsed:J


# direct methods
.method public static bridge synthetic -$$Nest$mreset(Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->reset()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/controllers/FlexibilityController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 229
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->score:I

    return-void
.end method
