.class public Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
.super Ljava/lang/Object;
.source "SaferIntentUtils.java"


# instance fields
.field public callingPid:I

.field public callingUid:I

.field public intent:Landroid/content/Intent;

.field public isReceiver:Z

.field public platformCompat:Lcom/android/server/compat/PlatformCompat;

.field public resolveForStart:Z

.field public resolvedType:Ljava/lang/String;

.field public snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;ZZII)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-boolean p3, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isReceiver:Z

    .line 183
    iput-object p1, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 184
    iput-object p2, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolvedType:Ljava/lang/String;

    .line 185
    iput-boolean p4, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolveForStart:Z

    .line 186
    iput p5, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p6, -0x1

    .line 187
    :goto_0
    iput p6, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingPid:I

    return-void
.end method


# virtual methods
.method public isChangeEnabled(J)Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUidInternalNoLogging(JI)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public reportEvent(IZ)V
    .locals 7

    .line 196
    iget-boolean v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolveForStart:Z

    if-eqz v0, :cond_0

    .line 197
    iget v2, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    iget v3, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingPid:I

    iget-object v4, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolvedType:Ljava/lang/String;

    move v1, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/SaferIntentUtils;->reportUnsafeIntentEvent(IIILandroid/content/Intent;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
