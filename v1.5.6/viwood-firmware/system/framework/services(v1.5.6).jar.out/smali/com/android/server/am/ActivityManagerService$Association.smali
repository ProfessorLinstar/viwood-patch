.class public final Lcom/android/server/am/ActivityManagerService$Association;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# instance fields
.field public mCount:I

.field public mLastState:I

.field public mLastStateUptime:J

.field public mNesting:I

.field public final mSourceProcess:Ljava/lang/String;

.field public final mSourceUid:I

.field public mStartTime:J

.field public mStateTimes:[J

.field public final mTargetComponent:Landroid/content/ComponentName;

.field public final mTargetProcess:Ljava/lang/String;

.field public final mTargetUid:I

.field public mTime:J


# direct methods
.method public constructor <init>(ILjava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1

    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x15

    .line 1172
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$Association;->mLastState:I

    .line 1174
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$Association;->mStateTimes:[J

    .line 1179
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$Association;->mSourceUid:I

    .line 1180
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$Association;->mSourceProcess:Ljava/lang/String;

    .line 1181
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetUid:I

    .line 1182
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetComponent:Landroid/content/ComponentName;

    .line 1183
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetProcess:Ljava/lang/String;

    return-void
.end method
