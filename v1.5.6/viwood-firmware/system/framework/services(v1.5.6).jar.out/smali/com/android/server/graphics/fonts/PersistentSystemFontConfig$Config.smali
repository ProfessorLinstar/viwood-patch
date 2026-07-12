.class public Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
.super Ljava/lang/Object;
.source "PersistentSystemFontConfig.java"


# instance fields
.field public final fontFamilies:Ljava/util/List;

.field public lastModifiedMillis:J

.field public final updatedFontDirs:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    return-void
.end method
