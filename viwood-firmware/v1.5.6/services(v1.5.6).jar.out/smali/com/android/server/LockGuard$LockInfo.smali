.class public Lcom/android/server/LockGuard$LockInfo;
.super Ljava/lang/Object;
.source "LockGuard.java"


# instance fields
.field public children:Landroid/util/ArraySet;

.field public doWtf:Z

.field public label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/util/ArraySet;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/LockGuard-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/LockGuard$LockInfo;-><init>()V

    return-void
.end method
