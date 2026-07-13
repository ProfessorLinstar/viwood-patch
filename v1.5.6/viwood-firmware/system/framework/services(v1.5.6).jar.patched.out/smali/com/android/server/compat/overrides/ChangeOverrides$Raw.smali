.class public Lcom/android/server/compat/overrides/ChangeOverrides$Raw;
.super Ljava/lang/Object;
.source "ChangeOverrides.java"


# instance fields
.field public rawOverrideValue:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/ChangeOverrides$Raw;
    .locals 4

    .line 103
    new-instance v0, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    invoke-direct {v0}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;-><init>()V

    .line 105
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 107
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    .line 109
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 111
    const-string/jumbo v2, "raw-override-value"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-static {p0}, Lcom/android/server/compat/overrides/RawOverrideValue;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/RawOverrideValue;

    move-result-object v1

    .line 113
    invoke-virtual {v0}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getRawOverrideValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {p0}, Lcom/android/server/compat/overrides/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    return-object v0

    .line 119
    :cond_3
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "ChangeOverrides.Raw is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRawOverrideValue()Ljava/util/List;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    return-object p0
.end method

.method public write(Lcom/android/server/compat/overrides/XmlWriter;Ljava/lang/String;)V
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 126
    const-string v0, ">\n"

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/XmlWriter;->increaseIndent()V

    .line 128
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getRawOverrideValue()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/overrides/RawOverrideValue;

    .line 129
    const-string/jumbo v2, "raw-override-value"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/compat/overrides/RawOverrideValue;->write(Lcom/android/server/compat/overrides/XmlWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/XmlWriter;->decreaseIndent()V

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    return-void
.end method
