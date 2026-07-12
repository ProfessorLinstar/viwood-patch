.class public Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;
.super Ljava/lang/Object;
.source "TrustedPresentationListenerController.java"


# instance fields
.field public mEnteredTrustedPresentationStateTime:J

.field public final mId:I

.field public mLastComputedTrustedPresentationState:Z

.field public mLastReportedTrustedPresentationState:Z

.field public final mListener:Landroid/window/ITrustedPresentationListener;

.field public final mThresholds:Landroid/window/TrustedPresentationThresholds;


# direct methods
.method public constructor <init>(Landroid/window/TrustedPresentationThresholds;ILandroid/window/ITrustedPresentationListener;)V
    .locals 2

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 437
    iput-boolean v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastComputedTrustedPresentationState:Z

    .line 438
    iput-boolean v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    const-wide/16 v0, -0x1

    .line 439
    iput-wide v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mEnteredTrustedPresentationStateTime:J

    .line 447
    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    .line 448
    iput p2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    .line 449
    iput-object p3, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mListener:Landroid/window/ITrustedPresentationListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/window/TrustedPresentationThresholds;ILandroid/window/ITrustedPresentationListener;Lcom/android/server/wm/TrustedPresentationListenerController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;-><init>(Landroid/window/TrustedPresentationThresholds;ILandroid/window/ITrustedPresentationListener;)V

    return-void
.end method
