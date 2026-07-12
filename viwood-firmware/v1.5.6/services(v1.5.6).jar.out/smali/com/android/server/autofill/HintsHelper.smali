.class public abstract Lcom/android/server/autofill/HintsHelper;
.super Ljava/lang/Object;
.source "HintsHelper.java"


# direct methods
.method public static getHintsForSaveType(I)Ljava/util/Set;
    .locals 4

    .line 88
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x1

    .line 89
    const-string/jumbo v2, "username"

    const-string/jumbo v3, "newUsername"

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/16 v1, 0x10

    if-eq p0, v1, :cond_0

    const/16 v1, 0x20

    if-eq p0, v1, :cond_2

    const/16 v1, 0x40

    if-eq p0, v1, :cond_2

    const/16 v1, 0x80

    if-eq p0, v1, :cond_2

    return-object v0

    .line 101
    :cond_0
    const-string p0, "emailAddress"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 97
    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 107
    :cond_2
    const-string p0, "creditCardExpirationDate"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 108
    const-string p0, "creditCardExpirationDay"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 109
    const-string p0, "creditCardExpirationMonth"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 110
    const-string p0, "creditCardExpirationYear"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 111
    const-string p0, "creditCardNumber"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 112
    const-string p0, "creditCardSecurityCode"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 115
    :cond_3
    const-string/jumbo p0, "postalAddress"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 116
    const-string p0, "aptNumber"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 117
    const-string p0, "addressCountry"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 118
    const-string p0, "dependentLocality"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 119
    const-string p0, "extendedAddress"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 120
    const-string p0, "extendedPostalCode"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 121
    const-string p0, "addressLocality"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 122
    const-string p0, "addressRegion"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 123
    const-string/jumbo p0, "streetAddress"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 124
    const-string/jumbo p0, "postalCode"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 91
    :cond_4
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 93
    const-string/jumbo p0, "newPassword"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 94
    const-string/jumbo p0, "password"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
