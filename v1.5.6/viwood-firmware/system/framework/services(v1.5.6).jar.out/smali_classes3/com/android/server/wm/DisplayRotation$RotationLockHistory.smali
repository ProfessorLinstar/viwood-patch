.class public Lcom/android/server/wm/DisplayRotation$RotationLockHistory;
.super Ljava/lang/Object;
.source "DisplayRotation.java"


# instance fields
.field public final mRecords:Ljava/util/ArrayDeque;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmRecords(Lcom/android/server/wm/DisplayRotation$RotationLockHistory;)Ljava/util/ArrayDeque;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory;->mRecords:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 2018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2041
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory;->mRecords:Ljava/util/ArrayDeque;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayRotation-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation$RotationLockHistory;-><init>()V

    return-void
.end method


# virtual methods
.method public addRecord(IILjava/lang/String;)V
    .locals 2

    .line 2045
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 2046
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 2048
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory;->mRecords:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;-><init>(IILjava/lang/String;Lcom/android/server/wm/DisplayRotation-IA;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method
