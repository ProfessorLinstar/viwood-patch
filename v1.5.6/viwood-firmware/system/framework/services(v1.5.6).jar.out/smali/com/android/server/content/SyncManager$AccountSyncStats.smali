.class public Lcom/android/server/content/SyncManager$AccountSyncStats;
.super Ljava/lang/Object;
.source "SyncManager.java"


# instance fields
.field public elapsedTime:J

.field public name:Ljava/lang/String;

.field public times:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2945
    iput-object p1, p0, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/content/SyncManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;)V

    return-void
.end method
