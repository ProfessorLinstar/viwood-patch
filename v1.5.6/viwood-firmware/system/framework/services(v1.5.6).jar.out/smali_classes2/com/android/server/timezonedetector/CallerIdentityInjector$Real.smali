.class public Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;
.super Ljava/lang/Object;
.source "CallerIdentityInjector.java"

# interfaces
.implements Lcom/android/server/timezonedetector/CallerIdentityInjector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCallingIdentity()J
    .locals 2

    .line 67
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCallingUserId()I
    .locals 0

    .line 62
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    return p0
.end method

.method public resolveUserId(ILjava/lang/String;)I
    .locals 7

    .line 56
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 57
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v2, p1

    move-object v5, p2

    .line 56
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public restoreCallingIdentity(J)V
    .locals 0

    .line 72
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method
