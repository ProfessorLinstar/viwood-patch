.class public final Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;
.super Ljava/lang/Object;
.source "StartingSurfaceController.java"


# instance fields
.field public final mDeferring:Lcom/android/server/wm/ActivityRecord;

.field public final mPrev:Lcom/android/server/wm/ActivityRecord;

.field public final mSource:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    .line 180
    iput-object p2, p0, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mPrev:Lcom/android/server/wm/ActivityRecord;

    .line 181
    iput-object p3, p0, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mSource:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method
