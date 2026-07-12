.class public final Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# instance fields
.field public mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mLastLoggedState:I

.field public final mVisibleActivities:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mVisibleActivities:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 554
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedState:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;-><init>()V

    return-void
.end method
