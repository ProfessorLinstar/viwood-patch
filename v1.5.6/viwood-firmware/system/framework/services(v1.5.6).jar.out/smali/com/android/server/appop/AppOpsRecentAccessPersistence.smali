.class public final Lcom/android/server/appop/AppOpsRecentAccessPersistence;
.super Ljava/lang/Object;
.source "AppOpsRecentAccessPersistence.java"


# instance fields
.field public final mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field public final mRecentAccessesFile:Landroid/util/AtomicFile;


# direct methods
.method public constructor <init>(Landroid/util/AtomicFile;Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->mRecentAccessesFile:Landroid/util/AtomicFile;

    .line 82
    iput-object p2, p0, Lcom/android/server/appop/AppOpsRecentAccessPersistence;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    return-void
.end method
