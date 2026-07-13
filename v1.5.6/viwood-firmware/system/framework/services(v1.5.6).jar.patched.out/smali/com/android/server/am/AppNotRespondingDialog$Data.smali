.class public Lcom/android/server/am/AppNotRespondingDialog$Data;
.super Ljava/lang/Object;
.source "AppNotRespondingDialog.java"


# instance fields
.field public final aInfo:Landroid/content/pm/ApplicationInfo;

.field public final aboveSystem:Z

.field public final isContinuousAnr:Z

.field public final proc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;ZZ)V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 210
    iput-object p2, p0, Lcom/android/server/am/AppNotRespondingDialog$Data;->aInfo:Landroid/content/pm/ApplicationInfo;

    .line 211
    iput-boolean p3, p0, Lcom/android/server/am/AppNotRespondingDialog$Data;->aboveSystem:Z

    .line 212
    iput-boolean p4, p0, Lcom/android/server/am/AppNotRespondingDialog$Data;->isContinuousAnr:Z

    return-void
.end method
