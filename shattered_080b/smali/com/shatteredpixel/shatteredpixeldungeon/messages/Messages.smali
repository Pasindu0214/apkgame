.class public Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# static fields
.field public static bundles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/b/a/r/e;",
            ">;"
        }
    .end annotation
.end field

.field public static lang:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

.field public static final noCaps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static prop_files:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com/shatteredpixel/shatteredpixeldungeon/messages/actors/actors"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com/shatteredpixel/shatteredpixeldungeon/messages/items/items"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "com/shatteredpixel/shatteredpixeldungeon/messages/journal/journal"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "com/shatteredpixel/shatteredpixeldungeon/messages/levels/levels"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "com/shatteredpixel/shatteredpixeldungeon/messages/plants/plants"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "com/shatteredpixel/shatteredpixeldungeon/messages/scenes/scenes"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "com/shatteredpixel/shatteredpixeldungeon/messages/ui/ui"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "com/shatteredpixel/shatteredpixeldungeon/messages/windows/windows"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "com/shatteredpixel/shatteredpixeldungeon/messages/misc/misc"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    .line 1
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->prop_files:[Ljava/lang/String;

    .line 2
    invoke-static {}, La/b/a/e;->language()Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->setup(Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;)V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v10, [Ljava/lang/String;

    const-string v10, "a"

    aput-object v10, v1, v2

    const-string v2, "an"

    aput-object v2, v1, v3

    const-string v2, "and"

    aput-object v2, v1, v4

    const-string v2, "of"

    aput-object v2, v1, v5

    const-string v2, "by"

    aput-object v2, v1, v6

    const-string v2, "to"

    aput-object v2, v1, v7

    const-string v2, "the"

    aput-object v2, v1, v8

    const-string v2, "x"

    aput-object v2, v1, v9

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->noCaps:Ljava/util/HashSet;

    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static varargs get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.shatteredpixel.shatteredpixeldungeon."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 4
    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->bundles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/r/e;

    .line 6
    invoke-virtual {v2, v0}, La/b/a/r/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    if-ne v3, v4, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 8
    array-length p0, p2

    if-lez p0, :cond_4

    invoke-static {v2, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v2

    :cond_5
    if-eqz p0, :cond_6

    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "!!!NO TEXT FOUND!!!"

    return-object p0
.end method

.method public static varargs get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setup(Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;)V
    .locals 15

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, La/b/a/r/e;->f:Z

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->bundles:Ljava/util/ArrayList;

    .line 3
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->lang:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 4
    new-instance v1, Ljava/util/Locale;

    .line 5
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->code:Ljava/lang/String;

    .line 6
    invoke-direct {v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 7
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->prop_files:[Ljava/lang/String;

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_d

    aget-object v4, p0, v3

    .line 8
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->bundles:Ljava/util/ArrayList;

    sget-object v6, La/b/a/e;->e:La/b/a/d;

    check-cast v6, La/b/a/m/a/i;

    invoke-virtual {v6, v4}, La/b/a/m/a/i;->b(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v4

    const/4 v6, 0x0

    move-object v7, v1

    move-object v8, v6

    .line 9
    :cond_0
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v11

    .line 12
    new-instance v12, Ljava/util/ArrayList;

    const/4 v13, 0x4

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 14
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 16
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v7

    goto :goto_1

    :cond_2
    new-instance v11, Ljava/util/Locale;

    invoke-direct {v11, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 18
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, v7

    goto :goto_2

    :cond_4
    new-instance v10, Ljava/util/Locale;

    invoke-direct {v10, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_5
    sget-object v9, La/b/a/r/e;->d:Ljava/util/Locale;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "UTF-8"

    .line 20
    invoke-static {v4, v9, v12, v0, v8}, La/b/a/r/e;->a(La/b/a/n/a;Ljava/lang/String;Ljava/util/List;ILa/b/a/r/e;)La/b/a/r/e;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 21
    iget-object v10, v9, La/b/a/r/e;->b:Ljava/util/Locale;

    .line 22
    sget-object v11, La/b/a/r/e;->d:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 23
    invoke-virtual {v10, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_4

    .line 24
    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_4

    :cond_7
    if-eqz v11, :cond_8

    if-nez v8, :cond_8

    move-object v8, v9

    .line 25
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    .line 26
    invoke-virtual {v7, v10}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v7, v6

    goto :goto_3

    :cond_9
    move-object v7, v10

    :goto_3
    if-nez v7, :cond_0

    :cond_a
    :goto_4
    if-nez v9, :cond_c

    if-eqz v8, :cond_b

    move-object v9, v8

    goto :goto_5

    .line 27
    :cond_b
    new-instance p0, Ljava/util/MissingResourceException;

    const-string v0, "Can\'t find bundle for base file handle "

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, La/b/a/n/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", locale "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_c
    :goto_5
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public static titleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->lang:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->ENGLISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    if-ne v0, v1, :cond_2

    const-string v0, "(?<=\\p{Zs})"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const-string v2, ""

    move-object v3, v2

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v4, p0, v1

    .line 3
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->noCaps:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":|[0-9]"

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    invoke-static {v3, v4}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v3}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
