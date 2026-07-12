.class public Lcom/android/server/content/SyncStorageEngine$AccountInfo;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# instance fields
.field public final accountAndUser:Landroid/accounts/AccountAndUser;

.field public final authorities:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountAndUser;)V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    .line 190
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    return-void
.end method
