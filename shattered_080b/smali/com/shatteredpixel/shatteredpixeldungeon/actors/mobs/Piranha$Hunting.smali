.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Piranha$Hunting;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;
.source "Piranha.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Piranha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Hunting"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Piranha;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Piranha;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Piranha$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Piranha$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Piranha;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method


# virtual methods
.method public act(ZZ)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Piranha$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Piranha;

    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    invoke-static {v0, v1, p1}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[ZI)V

    .line 2
    sget-object p1, Lcom/watabou/utils/PathFinder;->distance:[I

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Piranha$Hunting;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Piranha;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget p1, p1, v0

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Hunting;->act(ZZ)Z

    move-result p1

    return p1
.end method
