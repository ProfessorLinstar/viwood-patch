.class public final Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;
.super Ljava/lang/Object;
.source "LocaleUtils.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public mIndex:I

.field public final mScore:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 89
    iput v0, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    .line 94
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->set([BI)V

    return-void
.end method

.method public static compare([B[B)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 131
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 132
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-le v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ge v2, v3, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public compareTo(Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;)I
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    iget-object p1, p1, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->compare([B[B)I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 88
    check-cast p1, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->compareTo(Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;)I

    move-result p0

    return p0
.end method

.method public final set([BI)V
    .locals 3

    const/4 v0, 0x0

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 100
    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iput p2, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    return-void
.end method

.method public updateIfBetter([BI)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->compare([B[B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->set([BI)V

    :cond_0
    return-void
.end method
