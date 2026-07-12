.class public Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
.super Ljava/lang/Object;
.source "AppStandbyController.java"


# static fields
.field public static final sPool:Lcom/android/server/usage/AppStandbyController$Pool;


# instance fields
.field public bucket:I

.field public isUserInteraction:Z

.field public packageName:Ljava/lang/String;

.field public reason:I

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 536
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Pool;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    invoke-direct {v0, v1}, Lcom/android/server/usage/AppStandbyController$Pool;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Ljava/lang/String;IIIZ)Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
    .locals 1

    .line 554
    sget-object v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    invoke-direct {v0}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;-><init>()V

    .line 558
    :cond_0
    iput-object p0, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->packageName:Ljava/lang/String;

    .line 559
    iput p1, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->userId:I

    .line 560
    iput p2, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->bucket:I

    .line 561
    iput p3, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->reason:I

    .line 562
    iput-boolean p4, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->isUserInteraction:Z

    return-object v0
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .line 568
    sget-object v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    invoke-virtual {v0, p0}, Lcom/android/server/usage/AppStandbyController$Pool;->recycle(Ljava/lang/Object;)V

    return-void
.end method
