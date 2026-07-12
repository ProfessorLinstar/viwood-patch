.class public Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# instance fields
.field public newId:I

.field public notified:Z

.field public oldId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 7121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7122
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    .line 7123
    iput p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    const/4 p1, 0x0

    .line 7124
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    return-void
.end method
