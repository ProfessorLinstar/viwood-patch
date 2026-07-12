.class public final Lcom/android/server/wm/ActivityResult;
.super Landroid/app/ResultInfo;
.source "ActivityResult.java"


# instance fields
.field public final mFrom:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 31
    invoke-direct/range {v0 .. v5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 32
    iput-object p1, v0, Lcom/android/server/wm/ActivityResult;->mFrom:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method
