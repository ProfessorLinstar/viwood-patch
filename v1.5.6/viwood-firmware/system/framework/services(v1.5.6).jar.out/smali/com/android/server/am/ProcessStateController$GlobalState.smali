.class public Lcom/android/server/am/ProcessStateController$GlobalState;
.super Ljava/lang/Object;
.source "ProcessStateController.java"

# interfaces
.implements Lcom/android/server/am/OomAdjuster$GlobalState;


# instance fields
.field public final backupTargets:Landroid/util/SparseArray;

.field public isAwake:Z

.field public isLastMemoryLevelNormal:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->isAwake:Z

    .line 115
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->backupTargets:Landroid/util/SparseArray;

    .line 116
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateController$GlobalState;->isLastMemoryLevelNormal:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ProcessStateController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/ProcessStateController$GlobalState;-><init>()V

    return-void
.end method
