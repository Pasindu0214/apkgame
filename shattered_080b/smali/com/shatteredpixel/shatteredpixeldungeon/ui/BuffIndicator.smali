.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;
.super Lcom/watabou/noosa/ui/Component;
.source "BuffIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;
    }
.end annotation


# static fields
.field public static heroInstance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;


# instance fields
.field public buffIcons:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;",
            ">;"
        }
    .end annotation
.end field

.field public ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

.field public film:Lcom/watabou/noosa/TextureFilm;

.field public needsRefresh:Z

.field public texture:Lcom/watabou/gltextures/SmartTexture;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->buffIcons:Ljava/util/LinkedHashMap;

    .line 3
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v0, :cond_0

    .line 5
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->heroInstance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;

    :cond_0
    return-void
.end method

.method public static refreshHero()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->heroInstance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->needsRefresh:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 3

    const-string v0, "buffs.png"

    .line 1
    invoke-static {v0}, Lcom/watabou/gltextures/TextureCache;->get(Ljava/lang/Object;)Lcom/watabou/gltextures/SmartTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->texture:Lcom/watabou/gltextures/SmartTexture;

    .line 2
    new-instance v0, Lcom/watabou/noosa/TextureFilm;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->film:Lcom/watabou/noosa/TextureFilm;

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->destroy()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->heroInstance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->heroInstance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;

    :cond_0
    return-void
.end method

.method public layout()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 3
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->icon()I

    move-result v3

    const/16 v4, 0x3f

    if-eq v3, v4, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->buffIcons:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 6
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 7
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->buffIcons:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;->icon:Lcom/watabou/noosa/Image;

    .line 8
    iget-object v7, v6, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    const/high16 v8, 0x40400000    # 3.0f

    .line 9
    iput v8, v7, Lcom/watabou/utils/PointF;->x:F

    .line 10
    iput v8, v7, Lcom/watabou/utils/PointF;->y:F

    .line 11
    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 12
    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$1;

    const/4 v8, 0x0

    const v9, 0x3f19999a    # 0.6f

    invoke-direct {v7, p0, v6, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;Lcom/watabou/noosa/Visual;FF)V

    invoke-virtual {p0, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 13
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->buffIcons:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;

    invoke-virtual {v6}, Lcom/watabou/noosa/ui/Button;->destroy()V

    .line 14
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->buffIcons:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/watabou/noosa/Gizmo;

    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 15
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->buffIcons:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 17
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->buffIcons:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 18
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;

    invoke-direct {v3, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V

    .line 19
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 20
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->buffIcons:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->buffIcons:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;

    .line 22
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;->icon:Lcom/watabou/noosa/Image;

    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;

    .line 23
    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->film:Lcom/watabou/noosa/TextureFilm;

    .line 24
    iget-object v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;->buff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->icon()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    .line 25
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;->buff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$BuffIcon;->icon:Lcom/watabou/noosa/Image;

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->tintIcon(Lcom/watabou/noosa/Image;)V

    .line 26
    iget v3, p0, Lcom/watabou/noosa/ui/Component;->x:F

    mul-int/lit8 v4, v2, 0x9

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/watabou/noosa/ui/Component;->y:F

    const/high16 v5, 0x41100000    # 9.0f

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public declared-synchronized update()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->needsRefresh:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->needsRefresh:Z

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->layout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
