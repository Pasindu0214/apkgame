.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
.source "NewTengu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;->damage(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;-><init>()V

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;->progress()V

    const/4 v0, 0x1

    return v0
.end method
