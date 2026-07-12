.class Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
.super Landroid/util/AndroidException;
.source "FontManagerService.java"


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 129
    invoke-direct {p0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 130
    iput p1, p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 124
    invoke-direct {p0, p2, p3}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    iput p1, p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->mErrorCode:I

    return p0
.end method
