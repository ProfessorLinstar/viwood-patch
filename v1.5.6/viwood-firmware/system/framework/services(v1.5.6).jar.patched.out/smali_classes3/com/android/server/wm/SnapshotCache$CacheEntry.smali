.class public final Lcom/android/server/wm/SnapshotCache$CacheEntry;
.super Ljava/lang/Object;
.source "SnapshotCache.java"


# instance fields
.field public final snapshot:Landroid/window/TaskSnapshot;

.field public final topApp:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/android/server/wm/SnapshotCache$CacheEntry;->snapshot:Landroid/window/TaskSnapshot;

    .line 130
    iput-object p2, p0, Lcom/android/server/wm/SnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method
