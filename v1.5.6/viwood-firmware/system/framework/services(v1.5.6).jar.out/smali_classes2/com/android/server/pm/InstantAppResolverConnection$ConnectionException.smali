.class public Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;
.super Ljava/lang/Exception;
.source "InstantAppResolverConnection.java"


# instance fields
.field public final failure:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 310
    iput p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    return-void
.end method
