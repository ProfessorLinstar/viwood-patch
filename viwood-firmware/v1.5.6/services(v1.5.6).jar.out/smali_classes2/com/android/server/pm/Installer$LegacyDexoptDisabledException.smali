.class public Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;
.super Ljava/lang/Exception;
.source "Installer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 968
    const-string v0, "Invalid call to legacy dexopt method while ART Service is in use."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
