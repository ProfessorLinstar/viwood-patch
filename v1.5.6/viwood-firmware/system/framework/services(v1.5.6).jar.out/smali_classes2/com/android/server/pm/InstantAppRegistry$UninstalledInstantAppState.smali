.class public final Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
.super Ljava/lang/Object;
.source "InstantAppRegistry.java"


# instance fields
.field public final mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

.field public final mTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/pm/InstantAppInfo;J)V
    .locals 0

    .line 1311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1312
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    .line 1313
    iput-wide p2, p0, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mTimestamp:J

    return-void
.end method
