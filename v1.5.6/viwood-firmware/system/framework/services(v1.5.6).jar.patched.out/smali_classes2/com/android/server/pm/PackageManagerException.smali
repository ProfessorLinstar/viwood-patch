.class public Lcom/android/server/pm/PackageManagerException;
.super Ljava/lang/Exception;
.source "PackageManagerException.java"


# instance fields
.field public final error:I

.field public final internalErrorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 140
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 141
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 p1, 0x0

    .line 142
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 134
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 135
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 136
    iput p3, p0, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 146
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 p1, 0x0

    .line 148
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/16 p1, -0x6e

    .line 153
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 p1, 0x0

    .line 154
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    return-void
.end method

.method public static from(Lcom/android/server/pm/Installer$InstallerException;)Lcom/android/server/pm/PackageManagerException;
    .locals 3

    .line 159
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 160
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const/16 v2, -0x6e

    invoke-direct {v0, v2, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;
    .locals 2

    .line 129
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x6e

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method
