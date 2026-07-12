.class public Lcom/android/server/pm/PackageManagerTracedLock$RawLock;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "PackageManagerTracedLock.java"


# instance fields
.field private final mLockName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerTracedLock$RawLock;->mLockName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public lock()V
    .locals 0

    .line 88
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public unlock()V
    .locals 0

    .line 96
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
